# $NetBSD: buildlink2.mk,v 1.1 2002/10/30 09:39:30 seb Exp $
#
# This Makefile fragment is included by packages that use xerces-c.
#
# This file was created automatically using createbuildlink 2.2.
#

.if !defined(XERCES_C_BUILDLINK2_MK)
XERCES_C_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=			xerces-c
BUILDLINK_DEPENDS.xerces-c?=		xerces-c>=1.3.0nb1
BUILDLINK_PKGSRCDIR.xerces-c?=		../../textproc/xerces-c

EVAL_PREFIX+=	BUILDLINK_PREFIX.xerces-c=xerces-c
BUILDLINK_PREFIX.xerces-c_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.xerces-c+=	include/dom/DOM.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOMString.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_Attr.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_CDATASection.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_CharacterData.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_Comment.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_DOMException.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_DOMImplementation.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_Document.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_DocumentFragment.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_DocumentType.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_Element.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_Entity.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_EntityReference.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_NamedNodeMap.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_Node.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_NodeFilter.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_NodeIterator.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_NodeList.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_Notation.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_ProcessingInstruction.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_Range.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_RangeException.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_Text.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_TreeWalker.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DOM_XMLDecl.hpp
BUILDLINK_FILES.xerces-c+=	include/dom/DomMemDebug.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/LocalFileInputSource.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/MemBufInputSource.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/StdInInputSource.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/URLInputSource.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLAttDef.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLAttDefList.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLAttr.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLBuffer.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLBufferMgr.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLContentModel.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLDocumentHandler.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLElementDecl.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLEntityDecl.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLEntityHandler.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLErrorCodes.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLErrorReporter.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLFormatter.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLNotationDecl.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLPScanToken.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLRecognizer.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLRefInfo.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLValidator.hpp
BUILDLINK_FILES.xerces-c+=	include/framework/XMLValidityCodes.hpp
BUILDLINK_FILES.xerces-c+=	include/internal/CharTypeTables.hpp
BUILDLINK_FILES.xerces-c+=	include/internal/ElemStack.hpp
BUILDLINK_FILES.xerces-c+=	include/internal/EndOfEntityException.hpp
BUILDLINK_FILES.xerces-c+=	include/internal/ReaderMgr.hpp
BUILDLINK_FILES.xerces-c+=	include/internal/VecAttrListImpl.hpp
BUILDLINK_FILES.xerces-c+=	include/internal/VecAttributesImpl.hpp
BUILDLINK_FILES.xerces-c+=	include/internal/XMLReader.hpp
BUILDLINK_FILES.xerces-c+=	include/internal/XMLScanner.hpp
BUILDLINK_FILES.xerces-c+=	include/parsers/DOMParser.hpp
BUILDLINK_FILES.xerces-c+=	include/parsers/SAX2XMLReaderImpl.hpp
BUILDLINK_FILES.xerces-c+=	include/parsers/SAXParser.hpp
BUILDLINK_FILES.xerces-c+=	include/sax/AttributeList.hpp
BUILDLINK_FILES.xerces-c+=	include/sax/DTDHandler.hpp
BUILDLINK_FILES.xerces-c+=	include/sax/DocumentHandler.hpp
BUILDLINK_FILES.xerces-c+=	include/sax/EntityResolver.hpp
BUILDLINK_FILES.xerces-c+=	include/sax/ErrorHandler.hpp
BUILDLINK_FILES.xerces-c+=	include/sax/HandlerBase.hpp
BUILDLINK_FILES.xerces-c+=	include/sax/InputSource.hpp
BUILDLINK_FILES.xerces-c+=	include/sax/Locator.hpp
BUILDLINK_FILES.xerces-c+=	include/sax/Parser.hpp
BUILDLINK_FILES.xerces-c+=	include/sax/SAXException.hpp
BUILDLINK_FILES.xerces-c+=	include/sax/SAXParseException.hpp
BUILDLINK_FILES.xerces-c+=	include/sax2/Attributes.hpp
BUILDLINK_FILES.xerces-c+=	include/sax2/ContentHandler.hpp
BUILDLINK_FILES.xerces-c+=	include/sax2/DefaultHandler.hpp
BUILDLINK_FILES.xerces-c+=	include/sax2/SAX2XMLReader.hpp
BUILDLINK_FILES.xerces-c+=	include/sax2/XMLReaderFactory.hpp
BUILDLINK_FILES.xerces-c+=	include/util/ArrayIndexOutOfBoundsException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/AutoSense.hpp
BUILDLINK_FILES.xerces-c+=	include/util/BinFileInputStream.hpp
BUILDLINK_FILES.xerces-c+=	include/util/BinInputStream.hpp
BUILDLINK_FILES.xerces-c+=	include/util/BinMemInputStream.hpp
BUILDLINK_FILES.xerces-c+=	include/util/BitOps.hpp
BUILDLINK_FILES.xerces-c+=	include/util/BitSet.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/BorlandCDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/CSetDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/CodeWarriorDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/DECCXXDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/GCCDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/HPCCDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/IBMVAOS2Defs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/IBMVAW32Defs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/MIPSproDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/MVSCPPDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/OS400SetDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/PTXCCDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/SCOCCDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/SunCCDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/SunKaiDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/TandemCCDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Compilers/VCPPDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/CountedPointer.c
BUILDLINK_FILES.xerces-c+=	include/util/CountedPointer.hpp
BUILDLINK_FILES.xerces-c+=	include/util/EmptyStackException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/FlagJanitor.c
BUILDLINK_FILES.xerces-c+=	include/util/FlagJanitor.hpp
BUILDLINK_FILES.xerces-c+=	include/util/HashBase.hpp
BUILDLINK_FILES.xerces-c+=	include/util/HashPtr.hpp
BUILDLINK_FILES.xerces-c+=	include/util/HashXMLCh.hpp
BUILDLINK_FILES.xerces-c+=	include/util/IOException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/IllegalArgumentException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/InvalidCastException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Janitor.c
BUILDLINK_FILES.xerces-c+=	include/util/Janitor.hpp
BUILDLINK_FILES.xerces-c+=	include/util/KVStringPair.hpp
BUILDLINK_FILES.xerces-c+=	include/util/KeyValuePair.c
BUILDLINK_FILES.xerces-c+=	include/util/KeyValuePair.hpp
BUILDLINK_FILES.xerces-c+=	include/util/MsgLoaders/InMemory/CppErrMsgs_EN_US.hpp
BUILDLINK_FILES.xerces-c+=	include/util/MsgLoaders/InMemory/InMemMsgLoader.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Mutexes.hpp
BUILDLINK_FILES.xerces-c+=	include/util/NameIdPool.c
BUILDLINK_FILES.xerces-c+=	include/util/NameIdPool.hpp
BUILDLINK_FILES.xerces-c+=	include/util/NoDefTranscoderException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/NoSuchElementException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/NullPointerException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/PlatformUtils.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Platforms/NetBSD/NetBSDDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/RefArrayOf.c
BUILDLINK_FILES.xerces-c+=	include/util/RefArrayOf.hpp
BUILDLINK_FILES.xerces-c+=	include/util/RefHashTableOf.c
BUILDLINK_FILES.xerces-c+=	include/util/RefHashTableOf.hpp
BUILDLINK_FILES.xerces-c+=	include/util/RefStackOf.c
BUILDLINK_FILES.xerces-c+=	include/util/RefStackOf.hpp
BUILDLINK_FILES.xerces-c+=	include/util/RefVectorOf.c
BUILDLINK_FILES.xerces-c+=	include/util/RefVectorOf.hpp
BUILDLINK_FILES.xerces-c+=	include/util/RuntimeException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/StringPool.hpp
BUILDLINK_FILES.xerces-c+=	include/util/TransENameMap.c
BUILDLINK_FILES.xerces-c+=	include/util/TransENameMap.hpp
BUILDLINK_FILES.xerces-c+=	include/util/TransService.hpp
BUILDLINK_FILES.xerces-c+=	include/util/Transcoders/ICU/ICUTransService.hpp
BUILDLINK_FILES.xerces-c+=	include/util/TranscodingException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/UTFDataFormatException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/UnexpectedEOFException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/UnsupportedEncodingException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/ValueArrayOf.c
BUILDLINK_FILES.xerces-c+=	include/util/ValueArrayOf.hpp
BUILDLINK_FILES.xerces-c+=	include/util/ValueStackOf.c
BUILDLINK_FILES.xerces-c+=	include/util/ValueStackOf.hpp
BUILDLINK_FILES.xerces-c+=	include/util/ValueVectorOf.c
BUILDLINK_FILES.xerces-c+=	include/util/ValueVectorOf.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XML256TableTranscoder.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XML88591Transcoder.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLASCIITranscoder.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLChTranscoder.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLDeleterFor.c
BUILDLINK_FILES.xerces-c+=	include/util/XMLDeleterFor.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLEBCDICTranscoder.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLEnumerator.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLExceptMsgs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLException.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLIBM1140Transcoder.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLMsgLoader.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLNetAccessor.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLString.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLUCS4Transcoder.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLURL.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLUTF16Transcoder.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLUTF8Transcoder.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLUni.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLUniDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XMLWin1252Transcoder.hpp
BUILDLINK_FILES.xerces-c+=	include/util/XercesDefs.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/CMBinaryOp.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/CMLeaf.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/CMNode.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/CMStateSet.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/CMUnaryOp.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/ContentSpecNode.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/DFAContentModel.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/DTDAttDef.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/DTDAttDefList.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/DTDElementDecl.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/DTDEntityDecl.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/DTDValidator.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/DocTypeHandler.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/MixedContentModel.hpp
BUILDLINK_FILES.xerces-c+=	include/validators/DTD/SimpleContentModel.hpp
BUILDLINK_FILES.xerces-c+=	lib/libxerces-c1_3.*

.include "../../textproc/icu/buildlink2.mk"

BUILDLINK_TARGETS+=	xerces-c-buildlink

xerces-c-buildlink: _BUILDLINK_USE

.endif	# XERCES_C_BUILDLINK2_MK
