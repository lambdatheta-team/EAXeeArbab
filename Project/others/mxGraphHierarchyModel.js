�PNG

   IHDR           szz�   ,tEXtCreation Time Mon 25 Jan 2010 12:14:55 -0000h��~   tIME�$3�2   	pHYs  
�  
�B�4�   gAMA  ���a  �IDATx��VkLU>3��/���4�
�CAK0��զ��J�[MZM����>��R�1>5Z���5���
W`iKi[(,PZ�e�ٙ�;�B�e�;�����ݹߝ{�=���]�%��EHaN&t-�zyb��@]�'��c~�!=�t�AA��U��	�)�\ ��ܮ�n���NҡO8d�v5��t]�\_�^U[.�,�2��oZith��J	���,'{NQ��.}"DQ�DQ<���� ���9��K�����;`\�[�C�n���l�J
(��ןy��#�9dqD�XDQ�l?*|�����C@<�g��x��h����	!�8vt/��y�F�z_=��0�n�_|���d�Jؑ���Ƴ�R��NBT'�J�@�f��L��>$��X�&z��{({y��8�y�Kў���d|!���(U�V�XBt:v�H��r=���11�����M���������<s����i3��FV��$���|�a*����.�� ��s �o��d�&/���6��Bx�Nܱ��d��N��Wͬ��6����d2�?k��p;rͺ5TYSƕ�v8�m|���Z�f�f���g���a�����
�#i�^��΍qΥ*d*�;���DX]�j�Kl\�V������J�U�RfNG�;�rv����5e�g�2�7D��v%�SP��4Us�mv �@�|���4S(�v����$wn���xu&
��C���y/�ˊh1ܮ����3W����t�!��u\?��;�b#y�O�nW�~pe��	�x�Y�Lܻ�}���ҏ,�L�nGΌ���7%�O��P�Mf���ۙD����B��L�HV�ٷ���{��v���*3���3�$�!9r�骯���2�ͽ��u1�������01)E�������f�*�E.�4<0*3q0���y��vR��N�,��T�?�������B(��0<8�����j�Ff��@z��|���[�/+��t����N�8M��bg�;g��rh;��s� *z �q�L�۹���:!�S6�
�q�u��͸'����*�G�O��+;w�G�7��;Oo6;i��٩�3���2qp��Y�_edp��~܎bĴ�W43�B�Ύ�3�r��p��2��dc�1�u��Z�p�L��Z�,�ķbA�����qzJy��(�q�8`�÷�\Әe��=|I���- =yA׶�    IEND�B`�                                                                                                                                                           = 0;
	var internalVertices = [];

	if (vertices == null)
	{
		vertices = this.graph.getChildVertices(parent);
	}

	this.maxRank = this.SOURCESCANSTARTRANK;
	// map of cells to internal cell needed for second run through
	// to setup the sink of edges correctly. Guess size by number
	// of edges is roughly same as number of vertices.
	this.createInternalCells(layout, vertices, internalVertices);

	// Go through edges set their sink values. Also check the
	// ordering if and invert edges if necessary
	for (var i = 0; i < vertices.length; i++)
	{
		var edges = internalVertices[i].connectsAsSource;

		for (var j = 0; j < edges.length; j++)
		{
			var internalEdge = edges[j];
			var realEdges = internalEdge.edges;

			// Only need to process the first real edge, since
			// all the edges connect to the same other vertex
			if (realEdges != null && realEdges.length > 0)
			{
				var realEdge = realEdges[0];
				var targetCell = layout.getVisibleTerminal(
						realEdge, false);
				var internalTargetCell = this.vertexMapper.get(targetCell);

				if (internalVertices[i] == internalTargetCell)
				{
					// If there are parallel edges going between two vertices and not all are in the same direction
					// you can have navigated across one direction when doing the cycle reversal that isn't the same
					// direction as the first real edge in the array above. When that happens the if above catches
					// that and we correct the target cell before continuing.
					// This branch only detects this single case
					targetCell = layout.getVisibleTerminal(
							realEdge, true);
					internalTargetCell = this.vertexMapper.get(targetCell);
				}
				
				if (internalTargetCell != null
						&& internalVertices[i] != internalTargetCell)
				{
					internalEdge.target = internalTargetCell;

					if (internalTargetCell.connectsAsTarget.length == 0)
					{
						internalTargetCell.connectsAsTarget = [];
					}

					if (mxUtils.indexOf(internalTargetCell.connectsAsTarget, internalEdge) < 0)
					{
						internalTargetCell.connectsAsTarget.push(internalEdge);
					}
				}
			}
		}

		// Use the temp variable in the internal nodes to mark this
		// internal vertex as having been visited.
		internalVertices[i].temp[0] = 1;
	}
};

/**
 * Variable: maxRank
 *
 * Stores the largest rank number allocated
 */
mxGraphHierarchyModel.prototype.maxRank = null;

/**
 * Variable: vertexMapper
 *
 * Map from graph vertices to internal model nodes.
 */
mxGraphHierarchyModel.prototype.vertexMapper = null;

/**
 * Variable: edgeMapper
 *
 * Map from�PNG

   IHDR   �   �  �G   sRGB ���   gAMA  ���a   �PLTE                                                                                                                  ���                                                                                                                           ;���   PtRNS �\��d���+lۇ3t �|(�0�8���@�H�P���X�`��h�׃pߋ�x$瓀,�4���<��D�L����T�ܮ6   	pHYs    �&�?  �IDATx^�[ۼ��`�2B�4	��[����K��H�P)����7��I�dK��8&tz����[��t2Ao�yx��R|Qg�3}d�%�b�]�A�]XW�bA	���B��|���A�����|� ��&82���1칙  ;�:�N/� �6��� !<�Ф���a�Uj<ް���R�A��ٱˣ����q���1�
ھ"���kS����E�.C��\��~Gb�6����V�XpD��xN�ݎƑ��)���#��xnw2��U2}�m������-̚��9c�'�N��K{���[���;}��g�t��O��PG�}s�/?[&5����dS�D-�`�&�F���qu}ǟ!�:|�n
42R��G4S�1Dv�[�m�o򹚏3�)� q��|��CL!d�<���OT;���Y��Q�)�`��N<&�]vG��I��7j�3�a��PO�ddC�$';9�1ֺ��Z�A|��l^��~��o���(y�O:Hm�3l:;0�5+H�leȂs�dOS4{�A �lU:�n�ٍ�G�-rnD]���߳<_�r�nb@-W�X�ʆЁt�ue����L5���<��>�'O���C2��@Y1)y�G�b�Ú(�|�$���\�Ds�\~�"�[	��|6��y�����
�\y���E����JA0�]��S�]��J����[������S�{}R��6ҋ��'���}ŵ(�W�[� 8COt$�^�:A��.j�����Dn"N���{��-A���,�x�:<]�P�^l-mO�;�8,7%�d�m��W~��F�����i\�ی�?���!?��s�i�[�.#>�O-��A�y2�k�A��{�Ό��ABQ�ߦ��#�l���cQzZ?�m�r��P�t�oașkU��H���䜃��@-7*�T���v��	ys��20��F�R�g03@6��`Ѐ��^{�k���*/.b{��]*��� 6����'��%.!��� z��"�H����_���3eY�
@t,:sr�烍�.��0gG�c��yΑ�Jߔ�`Sq+K"�"��|!�h��<���FyƐ��<���b�Z�<�ۋ<���]�ҝN"��;M�d�%>E>K�������=c�Jl������/����h�	5��}�y@ע���îCM���9��AKS`a��'�{V5Ţ!Ě�[�rM�[��b�lN�B���b4]�$��n�ͽ�w��8�D�a�������l�GxԉqE�X�O�x`� A�fv!��s�Ʃ�`�E^��+�lq�`g�v�h~��Iyh�wͪu��<���|�~s��H:g�|
�6f�P#��:A�?�h����^�V������^(9��������f&Ccj��:��K$�p��3��|�v�^@մ�zb$�/����)�<����,'��zo�ٞm>���{��S#e������ٵ\��z�`j��,[��w���4��ş�%���x�ʼ�dQ�����p���D|\h��.��
6Zn�U[>(Eq��6�X�8"$��k�p����=����k;��b�d�`%B���� Gh�� ����u��K���B߽2�i���Lp�2���z����T&J�X�d�d)ԃ�x�ݭ�kTs-ݬ�9V_�M�g�o��р��i
��Z|�cP�,��	����Bz�����t��xI>�vV�K�<����Lз������!�5R��|t��C�������_ �{&���UprH1h,�?�`���E3�1�ݖC��}%�Ġ��p�,Q�<OH�p��"��@a.�Ւ��P�,�Z�:? o9K�Q��o�9����#��$�㗀oۈ~��E��fs�iB>�zB�������*��0en�{��O��T�{�27�>�e}��� �s�^Õ���lo�q��%;��u枯5'y���GI��q�m���}��YJ��5�Q/�E���x��j���x����v;m���,�Z�@!��CysZ��+�"�AR6�r�5ȃ�2K'��U�Ǻ���Ii. �F�yH�G7,o�Gcj[i'�n�bV2�������
��&ɇ ��5�g��]��<o��_u��0L^������EI�&Nxdb����DU�G@.�[�6��O��S�,��	�����Z������^b��.��ʠ+�-:�擀8�zډC��y�+�B������1�/w��������$��w�E(�
,�ȓ�DK�,P�zt���b���+��(���GJ|4�gA}�Bנ�E�9�b��W��I�]�"^�
�O5	�y7�$���b�?��("ovy]\pYx��+N�������j�\ ��G��p,����q����pg�r��:No�J���
�>�^z�5(-�{9����aV2m��tbT�(I��Է���^�'g��,��9�z���c0�x��M��.�d�������Hv+��.��%3�8��呜�f|;>�,uǱ�DZ�'�|UHl�S���-(�n7�������a�h�Z��~gî����Rf�,�����'k��-�d���N�j�l�C����Z[�/�M[�q�a��ǻ��İM����V���O�J�t	���L��z�]�C!�+)��oE++P&��o��.e/�o�/QH��J��-�lI+J�TІ�B��J�K)[�D�-^�ꭳ��Bۨ�BGѭ�q)e�.U������*,5�����ţe� �u
�Z��� �*��]�f�Ij���C��ں���3�}��/a<�-ǻ�|q�w)��2'�'��t��'��$������������Y,�KM���ܶ��xު��K�����tQx�׃Wt 1��i�VWe�y�J�x�%��;�ݳ��� �WC�FI�fa�V�qtO~|W!Z{lm|���v���Og�Ԋ�P�D�{�k�8��RM"��D�O���T��ez����J+��AD��3
��WG�������L�-Y���2��䟮y��_3t!���g�˙d�{}˔��-
�W����I"B��F^�-^�Т9�m�{�Fl~�N����E�b��T�RR��z�����s���Nم���v�뱹1e�
�ݎOEٶ�7��A@�q�Z��_ZxQ�G)}~��#�����u��4��/'���
�{�z�<�rz�N��;[��׺�!�)�	��(��_Ux��m�2c��=����k]V��/������pٽ���Gq����;X��]ln?�h��.����^��B�d�iE�A/8�
�ǖ9?ׄ��z9]Ebs2}��jU��	���,
o�J��7�A���EA���$�+��(d�V��}�(G9lcK���pQ'����vTH��N�\��q�`^�a�ٴV�A����������i����*7��	�)�R�����|��ê9��oB��]�Q q}&���?Lİ��`:������U(�����*��5��(��彲t��&�,�o�KF���-���DM?�^�G��,Y0�<fw
�\��d�;��Y=x̶7����?Ⱥ�+��_=�U(�7��(K9ٺ؏ٵ4�xC�p��� �_�?)�˻t�-Y&�WQ�vT�؏ٍ�{��^ҍ�"Tj���g��+�3�F�G)�;��%�Y�XEm���V�w��$�r�UߘnܙU��@���BKi}���{$ťƞ�"?ɺ��[7�A��9.����ʥ��{���R�֞f��T.k_������ϥ��)8�����x�W�h���j��ok�z}.���Q�Ⱥ��|��]��yA~~��{�t�:��~E����6p�_��	��/��3�������J0w��y}�3\���
`�wK�s��`ܮ~]��^Nw����7j=�3�=�%Dmx+���\��F28�V���¸3\H	�a'����kzz��֏g��f�w�[�=��n����~��V�j��y�n���7������@Dw��T�Z�?$]��I��'��bO�I��:KS��I'��x���}ؙ�,a���h��`�ym    IEND�B`�                                                                             function()
{
	var startNodes = [];

	if (this.roots != null)
	{
		for (var i = 0; i < this.roots.length; i++)
		{
			var internalNode = this.vertexMapper.get(this.roots[i]);

			if (internalNode != null)
			{
				startNodes.push(internalNode);
			}
		}
	}

	var internalNodes = this.vertexMapper.getValues();
	
	for (var i=0; i < internalNodes.length; i++)
	{
		// Mark the node as not having had a layer assigned
		internalNodes[i].temp[0] = -1;
	}

	var startNodesCopy = startNodes.slice();

	while (startNodes.length > 0)
	{
		var internalNode = startNodes[0];
		var layerDeterminingEdges;
		var edgesToBeMarked;

		layerDeterminingEdges = internalNode.connectsAsTarget;
		edgesToBeMarked = internalNode.connectsAsSource;

		// flag to keep track of whether or not all layer determining
		// edges have been scanned
		var allEdgesScanned = true;

		// Work out the layer of this node from the layer determining
		// edges. The minimum layer number of any node connected by one of
		// the layer determining edges variable
		var minimumLayer = this.SOURCESCANSTARTRANK;

		for (var i = 0; i < layerDeterminingEdges.length; i++)
		{
			var internalEdge = layerDeterminingEdges[i];

			if (internalEdge.temp[0] == 5270620)
			{
				// This edge has been scanned, get the layer of the
				// node on the other end
				var otherNode = internalEdge.source;
				minimumLayer = Math.min(minimumLayer, otherNode.temp[0] - 1);
			}
			else
			{
				allEdgesScanned = false;

				break;
			}
		}

		// If all edge have been scanned, assign the layer, mark all
		// edges in the other direction and remove from the nodes list
		if (allEdgesScanned)
		{
			internalNode.temp[0] = minimumLayer;
			this.maxRank = Math.min(this.maxRank, minimumLayer);

			if (edgesToBeMarked != null)
			{
				for (var i = 0; i < edgesToBeMarked.length; i++)
				{
					var internalEdge = edgesToBeMarked[i];

					// Assign unique stamp ( y/m/d/h )
					internalEdge.temp[0] = 5270620;

					// Add node on other end of edge to LinkedList of
					// nodes to be analysed
					var otherNode = internalEdge.target;

					// Only add node if it hasn't been assigned a layer
					if (otherNode.temp[0] == -1)
					{
						startNodes.push(otherNode);

						// Mark this other node as neither being
						// unassigned nor assigned so it isn't
						// added to this list again, but it's
						// layer isn't used in any calculation.
						otherNode.temp[0] = -2;
					}
				}
			}

			startNodes.shift();
		}
		else
		{
			// Not all the edges have been scanned, get to the back of
			// the class and put the dunces cap on
			var removedCell = startNodes.shift();
			startNodes.push(internalNode);

			if (removedCell == internalNode && startNodes.length == 1)
			{
				// This is an error condition, we can't get out of
				// this loop. It could happen for more than one node
				// but that's a lot harder to detect. Log the error
				// TODO make log comment
				break;
			}
		}
	}

	// Normalize the ranks down from their large starting value to place
	// at least 1 sink on layer 0
	for (var i=0; i < internalNodes.length; i++)
	{
		// Mark the node as not having had a layer assigned
		internalNodes[i].temp[0] -= this.maxRank;
	}
	
	// Tighten the rank 0 nodes as far as possible
	for ( var i = 0; i < startNodesCopy.length; i++)
	{
		var internalNode = startNodesCopy[i];
		var currentMaxLayer = 0;
		var layerDeterminingEdges = internalNode.connectsAsSource;

		for ( var j = 0; j < layerDeterminingEdges.length; j++)
		{
			var internalEdge = layerDeterminingEdges[j];
			var otherNode = internalEdge.ta<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" 
width="18.000000pt" height="18.000000pt" viewBox="0 0 251 145" enable-background="new 0 0 251 145" xml:space="preserve">  
<image
    xlink:href="data:image/png;base64,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" />
</svg>
                                                                                                                                                                                                                                                                                                                                                             f the current node was in its ancestor list it
	// meant there is a cycle in the graph and this information is passed
	// to the visitor.visit() in the seen parameter. The HashSet clone was
	// very expensive on CPU so a custom hash was developed using primitive
	// types. temp[] couldn't be used so hashCode[] was added to each node.
	// Each new child adds another int to the array, copying the prefix
	// from its parent. Child of the same parent add different ints (the
	// limit is therefore 2^32 children per parent...). If a node has a
	// child with the hashCode already set then the child code is compared
	// to the same portion of the current nodes array. If they match there
	// is a loop.
	// Note that the basic mechanism would only allow for 1 use of this
	// functionality, so the root nodes have two ints. The second int is
	// incremented through each node root and the first is incremented
	// through each run of the dfs algorithm (therefore the dfs is not
	// thread safe). The hash code of each node is set if not already set,
	// or if the first int does not match that of the current run.
	if (root != null)
	{
		if (parent != null)
		{
			// Form this nodes hash code if necessary, that is, if the
			// hashCode variable has not been initialized or if the
			// start of the parent hash code does not equal the start of
			// this nodes hash code, indicating the code was set on a
			// previous run of this dfs.
			if (root.hashCode == null ||
				root.hashCode[0] != parent.hashCode[0])
			{
				var hashCodeLength = parent.hashCode.length + 1;
				root.hashCode = parent.hashCode.slice();
				root.hashCode[hashCodeLength - 1] = childHash;
			}
		}

		var rootId = root.id;

		if (seen[rootId] == null)
		{
			seen[rootId] = root;
			visitor(parent, root, connectingEdge, layer, 0);

			// Copy the connects as source list so that visitors
			// can change the original for edge direction inversions
			var outgoingEdges = root.connectsAsSource.slice();

			for (var i = 0; i < outgoingEdges.length; i++)
			{
				var internalEdge = outgoingEdges[i];
				var targetNode = internalEdge.target;

				// Root check is O(|roots|)
				this.extendedDfs(root, targetNode, internalEdge, visitor, seen,
						root.hashCode, i, layer + 1);
			}
		}
		else
		{
			// Use the int field to indicate this node has been seen
			visitor(parent, root, connectingEdge, layer, 1);
		}
	}
};
