.class public Lcom/miui/maml/LanguageHelper;
.super Ljava/lang/Object;
.source "LanguageHelper.java"


# static fields
.field private static final COMPATIBLE_STRING_ROOT_TAG:Ljava/lang/String; = "strings"

.field private static final DEFAULT_STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "LanguageHelper"

.field private static final STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final STRING_ROOT_TAG:Ljava/lang/String; = "resources"

.field private static final STRING_TAG:Ljava/lang/String; = "string"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/util/Locale;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/data/Variables;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "strings/strings.xml"

    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {p1, v2}, Lcom/miui/maml/ResourceManager;->resourceExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 34
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 37
    :goto_0
    invoke-virtual {p1, p0}, Lcom/miui/maml/ResourceManager;->resourceExists(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "LanguageHelper"

    if-nez v2, :cond_3

    .line 39
    invoke-virtual {p1, v1}, Lcom/miui/maml/ResourceManager;->resourceExists(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "no available string resources to load."

    .line 40
    invoke-static {v4, p0}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    move-object p0, v1

    .line 46
    :cond_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 49
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {p1, p0}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 58
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :cond_4
    :goto_1
    invoke-static {p0, p2}, Lcom/miui/maml/LanguageHelper;->setVariables(Lorg/w3c/dom/Document;Lcom/miui/maml/data/Variables;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 53
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 58
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return v3

    :goto_3
    if-eqz v0, :cond_6

    .line 58
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :cond_6
    :goto_4
    throw p0
.end method

.method private static setVariables(Lorg/w3c/dom/Document;Lcom/miui/maml/data/Variables;)Z
    .locals 7

    const-string v0, "resources"

    .line 80
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_1

    const-string v0, "strings"

    .line 82
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-gtz p0, :cond_0

    return v3

    :cond_0
    move p0, v3

    goto :goto_0

    :cond_1
    move p0, v2

    .line 90
    :goto_0
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v1, "string"

    .line 91
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 92
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 93
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v4, "name"

    .line 94
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p0, :cond_2

    .line 95
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v5, "value"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v5, "\\\\"

    const-string v6, ""

    .line 100
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p1, v4, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method
