.class public Lcom/miui/maml/widget/edit/local/ManifestManager;
.super Ljava/lang/Object;
.source "ManifestManager.java"


# static fields
.field protected static final ATTR_LOCALE:Ljava/lang/String; = "locale"

.field protected static final ELEMENT_AUTHOR:Ljava/lang/String; = "author"

.field protected static final ELEMENT_AUTHORS:Ljava/lang/String; = "authors"

.field protected static final ELEMENT_DESCRIPTION:Ljava/lang/String; = "description"

.field protected static final ELEMENT_DESCRIPTIONS:Ljava/lang/String; = "descriptions"

.field protected static final ELEMENT_DESIGNER:Ljava/lang/String; = "designer"

.field protected static final ELEMENT_DESIGNERS:Ljava/lang/String; = "designers"

.field protected static final ELEMENT_MAML_EDITABLE:Ljava/lang/String; = "editable"

.field protected static final ELEMENT_MAML_EDIT_LINK:Ljava/lang/String; = "customEditLink"

.field protected static final ELEMENT_MAML_FRAME:Ljava/lang/String; = "frame"

.field protected static final ELEMENT_MAML_TYPE_TAG:Ljava/lang/String; = "typeTag"

.field protected static final ELEMENT_PLATFORM:Ljava/lang/String; = "platform"

.field protected static final ELEMENT_TITLE:Ljava/lang/String; = "title"

.field protected static final ELEMENT_TITLES:Ljava/lang/String; = "titles"

.field protected static final ELEMENT_UIVERSION:Ljava/lang/String; = "uiVersion"

.field protected static final ELEMENT_VERSION:Ljava/lang/String; = "version"

.field public static final LOCALE_FALLBACK:Ljava/lang/String; = "fallback"


# instance fields
.field private final manifest:Lcom/miui/maml/widget/edit/local/Manifest;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseManifestFile(Ljava/io/File;)Lcom/miui/maml/widget/edit/local/Manifest;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/widget/edit/local/ManifestManager;->manifest:Lcom/miui/maml/widget/edit/local/Manifest;

    return-void
.end method

.method private static parseAuthorElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V
    .locals 2

    .line 119
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    .line 120
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "fallback"

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/local/Manifest;->getAuthors()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static parseAuthorsElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V
    .locals 2

    const-string v0, "author"

    .line 155
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 156
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 157
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 158
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 159
    invoke-static {v1, p1}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseAuthorElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static parseDescriptionElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V
    .locals 2

    .line 146
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    .line 147
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "fallback"

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/local/Manifest;->getDescriptions()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static parseDescriptionsElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V
    .locals 2

    const-string v0, "description"

    .line 185
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 186
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 187
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 188
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 189
    invoke-static {v1, p1}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseDescriptionElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static parseDesignerElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V
    .locals 2

    .line 128
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    .line 129
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "fallback"

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/local/Manifest;->getDesigners()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static parseDesignersElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V
    .locals 2

    const-string v0, "designer"

    .line 165
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 166
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 167
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 168
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 169
    invoke-static {v1, p1}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseDesignerElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parseManifestFile(Ljava/io/File;)Lcom/miui/maml/widget/edit/local/Manifest;
    .locals 5

    .line 59
    new-instance v0, Lcom/miui/maml/widget/edit/local/Manifest;

    invoke-direct {v0}, Lcom/miui/maml/widget/edit/local/Manifest;-><init>()V

    .line 61
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 63
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 64
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    .line 65
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 66
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x0

    .line 67
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 68
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 69
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 70
    check-cast v2, Lorg/w3c/dom/Element;

    .line 71
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "platform"

    .line 72
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "uiVersion"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v4, "version"

    .line 74
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    invoke-static {v2, v0}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseVersionElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    goto/16 :goto_2

    :cond_1
    const-string v4, "author"

    .line 76
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    invoke-static {v2, v0}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseAuthorElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    goto/16 :goto_2

    :cond_2
    const-string v4, "designer"

    .line 78
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 79
    invoke-static {v2, v0}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseDesignerElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    goto/16 :goto_2

    :cond_3
    const-string v4, "title"

    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 81
    invoke-static {v2, v0}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseTitleElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    goto/16 :goto_2

    :cond_4
    const-string v4, "typeTag"

    .line 82
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 83
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/maml/widget/edit/local/Manifest;->setTypeTag(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v4, "editable"

    .line 84
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v3, "true"

    .line 85
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/maml/widget/edit/local/Manifest;->setEditable(Z)V

    goto :goto_2

    :cond_6
    const-string v4, "customEditLink"

    .line 86
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, "true"

    .line 87
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/maml/widget/edit/local/Manifest;->setCustomEdit(Z)V

    goto :goto_2

    :cond_7
    const-string v4, "description"

    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 89
    invoke-static {v2, v0}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseDescriptionElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    goto :goto_2

    :cond_8
    const-string v4, "authors"

    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 91
    invoke-static {v2, v0}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseAuthorsElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    goto :goto_2

    :cond_9
    const-string v4, "designers"

    .line 92
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 93
    invoke-static {v2, v0}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseDesignersElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    goto :goto_2

    :cond_a
    const-string v4, "titles"

    .line 94
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 95
    invoke-static {v2, v0}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseTitlesElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    goto :goto_2

    :cond_b
    const-string v4, "descriptions"

    .line 96
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 97
    invoke-static {v2, v0}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseDescriptionsElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    goto :goto_2

    .line 73
    :cond_c
    :goto_1
    invoke-static {v2, v0}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parsePlatformElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    return-object v0
.end method

.method private static parsePlatformElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V
    .locals 0

    .line 109
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 110
    invoke-virtual {p1, p0}, Lcom/miui/maml/widget/edit/local/Manifest;->setPlatform(I)V

    return-void
.end method

.method private static parseTitleElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V
    .locals 2

    .line 137
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    .line 138
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "fallback"

    .line 142
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/local/Manifest;->getTitles()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static parseTitlesElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V
    .locals 2

    const-string v0, "title"

    .line 175
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 176
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 177
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 178
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 179
    invoke-static {v1, p1}, Lcom/miui/maml/widget/edit/local/ManifestManager;->parseTitleElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static parseVersionElement(Lorg/w3c/dom/Element;Lcom/miui/maml/widget/edit/local/Manifest;)V
    .locals 0

    .line 114
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-virtual {p1, p0}, Lcom/miui/maml/widget/edit/local/Manifest;->setVersion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAuthors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/miui/maml/widget/edit/local/ManifestManager;->manifest:Lcom/miui/maml/widget/edit/local/Manifest;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/local/Manifest;->getAuthors()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/miui/maml/widget/edit/local/ManifestManager;->manifest:Lcom/miui/maml/widget/edit/local/Manifest;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/local/Manifest;->getDescriptions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDesigners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/miui/maml/widget/edit/local/ManifestManager;->manifest:Lcom/miui/maml/widget/edit/local/Manifest;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/local/Manifest;->getDesigners()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTitles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/miui/maml/widget/edit/local/ManifestManager;->manifest:Lcom/miui/maml/widget/edit/local/Manifest;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/local/Manifest;->getTitles()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTypeTag()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/miui/maml/widget/edit/local/ManifestManager;->manifest:Lcom/miui/maml/widget/edit/local/Manifest;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/local/Manifest;->getTypeTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/miui/maml/widget/edit/local/ManifestManager;->manifest:Lcom/miui/maml/widget/edit/local/Manifest;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/local/Manifest;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCustomEdit()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/miui/maml/widget/edit/local/ManifestManager;->manifest:Lcom/miui/maml/widget/edit/local/Manifest;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/local/Manifest;->getCustomEdit()Z

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/miui/maml/widget/edit/local/ManifestManager;->manifest:Lcom/miui/maml/widget/edit/local/Manifest;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/local/Manifest;->getEditable()Z

    move-result v0

    return v0
.end method
