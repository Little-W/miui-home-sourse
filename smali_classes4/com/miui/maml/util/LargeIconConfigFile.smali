.class public Lcom/miui/maml/util/LargeIconConfigFile;
.super Ljava/lang/Object;
.source "LargeIconConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/LargeIconConfigFile$Icon;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LargeIconConfigFile"


# instance fields
.field private mIconsConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/util/LargeIconConfigFile$Icon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/LargeIconConfigFile;->mIconsConfigs:Ljava/util/HashMap;

    return-void
.end method

.method public static readConfigFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 127
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 128
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 130
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    :goto_0
    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    int-to-char v2, v2

    .line 132
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 135
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 136
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s*|\t|\r|\n"

    .line 137
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    .line 139
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "LargeIconConfigFile"

    const-string v1, "readConfigFile failed"

    .line 142
    invoke-static {v0, v1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static readTransFormConfig(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)I
    .locals 6

    if-eqz p0, :cond_0

    .line 148
    iget v0, p0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->enableIconMask:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 149
    iget p0, p0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->enableIconMask:I

    return p0

    .line 152
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    const/4 v1, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    .line 158
    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 160
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    move v0, v1

    .line 161
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 162
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 165
    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 166
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Config"

    .line 167
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "name"

    .line 168
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    .line 169
    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "enableIconMask"

    .line 170
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p0, :cond_3

    .line 172
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    iput v3, p0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->enableIconMask:I

    .line 173
    iget p0, p0, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->enableIconMask:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LargeIconConfigFile"

    const-string v0, "load icon config failed."

    .line 180
    invoke-static {p1, v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return v1
.end method


# virtual methods
.method public getIconsConfigs()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/util/LargeIconConfigFile$Icon;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/miui/maml/util/LargeIconConfigFile;->mIconsConfigs:Ljava/util/HashMap;

    return-object p0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 8

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "LargeIconConfigFile"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p0, "generateLargeIconConfigFile not found"

    .line 69
    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 72
    :cond_0
    invoke-static {v0}, Lcom/miui/maml/util/LargeIconConfigFile;->readConfigFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 78
    :cond_1
    :try_start_0
    new-instance v0, Lcom/miui/maml/util/LargeIconConfigFile$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/LargeIconConfigFile$1;-><init>(Lcom/miui/maml/util/LargeIconConfigFile;)V

    .line 79
    invoke-virtual {v0}, Lcom/miui/maml/util/LargeIconConfigFile$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 80
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_2

    return v2

    .line 84
    :cond_2
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 85
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/util/LargeIconConfigFile$Icon;

    if-nez v4, :cond_4

    goto :goto_0

    .line 89
    :cond_4
    iget-object v5, p0, Lcom/miui/maml/util/LargeIconConfigFile;->mIconsConfigs:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/maml/util/LargeIconConfigFile$Icon;

    if-nez v5, :cond_5

    .line 91
    new-instance v5, Lcom/miui/maml/util/LargeIconConfigFile$Icon;

    invoke-direct {v5}, Lcom/miui/maml/util/LargeIconConfigFile$Icon;-><init>()V

    .line 92
    iget-object v6, v4, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->packageName:Ljava/lang/String;

    .line 93
    iget-object v6, p0, Lcom/miui/maml/util/LargeIconConfigFile;->mIconsConfigs:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_5
    iget-object v3, v4, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->name:Ljava/lang/String;

    iput-object v3, v5, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->name:Ljava/lang/String;

    .line 96
    iget-object v3, v4, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->size:Ljava/lang/String;

    iput-object v3, v5, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->size:Ljava/lang/String;

    .line 97
    iget-object v3, v4, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->path:Ljava/lang/String;

    iput-object v3, v5, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->path:Ljava/lang/String;

    .line 98
    iget-boolean v3, v4, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->isPairApp:Z

    iput-boolean v3, v5, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->isPairApp:Z

    .line 99
    iget-object v3, v4, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->uuid:Ljava/lang/String;

    iput-object v3, v5, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->uuid:Ljava/lang/String;

    .line 100
    iget-object v3, v4, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->localId:Ljava/lang/String;

    iput-object v3, v5, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->localId:Ljava/lang/String;

    .line 102
    iget-object v3, v4, Lcom/miui/maml/util/LargeIconConfigFile$Icon;->associatedPackage:Ljava/lang/String;

    .line 103
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ","

    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v4, v2

    .line 105
    :goto_1
    array-length v6, v3

    if-ge v4, v6, :cond_3

    .line 106
    aget-object v6, v3, v4

    .line 107
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 108
    iget-object v7, p0, Lcom/miui/maml/util/LargeIconConfigFile;->mIconsConfigs:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "get json failed"

    .line 117
    invoke-static {v1, p1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method
