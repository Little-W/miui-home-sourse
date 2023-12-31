.class public final Lcom/miui/maml/widget/edit/ParseEditMamlConfig;
.super Ljava/lang/Object;
.source "ParseEditMamlConfig.kt"


# static fields
.field private static final ATTR_DISPLAY_TITLE:Ljava/lang/String; = "displayTitle"

.field private static final ATTR_LOCALE:Ljava/lang/String; = "locale"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_UI_TYPE:Ljava/lang/String; = "uiType"

.field public static final INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

.field private static final LOG_TAG:Ljava/lang/String; = "ParseEditMamlConfig"

.field private static final TAG_ALIGN_STYLE:Ljava/lang/String; = "Align"

.field private static final TAG_COLOR:Ljava/lang/String; = "Color"

.field private static final TAG_COLOR_GROUP:Ljava/lang/String; = "ColorGroup"

.field private static final TAG_CUSTOM_EDIT_LINK:Ljava/lang/String; = "CustomEditLink"

.field private static final TAG_FONT_SIZE:Ljava/lang/String; = "FontSize"

.field private static final TAG_IMAGE_PICK:Ljava/lang/String; = "ImagePick"

.field private static final TAG_IMAGE_SELECT:Ljava/lang/String; = "ImageSelect"

.field private static final TAG_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final TAG_ON_OFF:Ljava/lang/String; = "OnOff"

.field private static final TAG_SET_DATE:Ljava/lang/String; = "SetDate"

.field private static final TAG_TEXT:Ljava/lang/String; = "Text"

.field public static final VAR_CONFIG:Ljava/lang/String; = "var_config.xml"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v0}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;-><init>()V

    sput-object v0, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parseVarXml(Ljava/io/InputStream;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/BaseConfig;",
            ">;"
        }
    .end annotation

    const-string v0, "ParseEditMamlConfig"

    const-string v1, "inputStream"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x0

    .line 58
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 59
    invoke-interface {v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 60
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const-string p0, "WidgetConfig"

    const/4 v3, 0x2

    .line 61
    invoke-interface {v2, v3, v1, p0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    .line 63
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const-string v4, "parser"

    .line 64
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eq v4, v3, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "CustomEditLink"

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v4, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readCustomEditLink(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/CustomEditLinkConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    const-string v5, "ImagePick"

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v4, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readImagePick(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/ImagePickConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    const-string v5, "FontSize"

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v4, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readTextSize(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/TextSizeConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    const-string v5, "OnOff"

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v4, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readOnOff(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/OnOffConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    const-string v5, "Color"

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v4, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readColor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/BaseConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_5
    const-string v5, "Align"

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v4, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readAlignStyle(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/AlignStyleConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "Text"

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v4, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readText(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/EditTextConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "ImageSelect"

    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v4, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readImageSelect(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/ImageSelectConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "SetDate"

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v4, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readSetDate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/DateSetConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "ColorGroup"

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v4, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readColorGroup(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/BaseConfig;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 79
    :cond_2
    :goto_1
    sget-object v4, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v4, v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_3
    return-object p0

    :catch_0
    move-exception p0

    .line 86
    check-cast p0, Ljava/lang/Throwable;

    const-string v2, "load error."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 84
    check-cast p0, Ljava/lang/Throwable;

    const-string v2, "load error.."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x3da22704 -> :sswitch_9
        -0x267e48f0 -> :sswitch_8
        -0x1bc33de9 -> :sswitch_7
        0x27b94d -> :sswitch_6
        0x3c6a6e5 -> :sswitch_5
        0x3e43f43 -> :sswitch_4
        0x48c76f0 -> :sswitch_3
        0x19a50510 -> :sswitch_2
        0x431897fc -> :sswitch_1
        0x7bab37d5 -> :sswitch_0
    .end sparse-switch
.end method

.method private final readAlignStyle(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/AlignStyleConfig;
    .locals 10

    const-string v0, "name"

    const/4 v1, 0x0

    .line 235
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "displayTitle"

    .line 236
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "default"

    .line 237
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "from"

    .line 238
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "to"

    .line 239
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    .line 241
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    :goto_0
    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 244
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Language"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 245
    invoke-direct {p0, p1, v7}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 248
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Align"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 252
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_0

    .line 254
    :cond_2
    :goto_2
    new-instance p0, Lcom/miui/maml/widget/edit/AlignStyleConfig;

    .line 255
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v7

    .line 258
    :goto_3
    invoke-static {v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result p1

    .line 259
    invoke-static {v5}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v7

    .line 260
    invoke-static {v6}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v8

    move-object v2, p0

    move-object v5, v1

    move v6, p1

    .line 254
    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/widget/edit/AlignStyleConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;III)V

    return-object p0
.end method

.method private final readColor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/BaseConfig;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x2

    const-string v2, "Color"

    const/4 v3, 0x0

    .line 133
    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "name"

    .line 134
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "displayTitle"

    .line 135
    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 138
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v8, Ljava/util/Map;

    :catch_0
    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x3

    if-eq v7, v9, :cond_3

    if-ne v7, v1, :cond_1

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Language"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 142
    invoke-direct {p0, p1, v8}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    .line 145
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    const-string v11, "parser.nextText()"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x1e

    if-lt v7, v9, :cond_2

    goto :goto_2

    :cond_1
    if-ne v7, v10, :cond_2

    .line 152
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 156
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_0

    .line 158
    :cond_3
    :goto_2
    invoke-interface {p1, v10, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance p0, Lcom/miui/maml/widget/edit/ColorConfig;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v8

    :goto_3
    invoke-direct {p0, v5, v6, v3, v0}, Lcom/miui/maml/widget/edit/ColorConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    check-cast p0, Lcom/miui/maml/widget/edit/BaseConfig;

    return-object p0
.end method

.method private final readColorGroup(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/BaseConfig;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    const/4 v1, 0x2

    const-string v2, "ColorGroup"

    const/4 v3, 0x0

    .line 165
    invoke-interface {v0, v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "name"

    .line 166
    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "displayTitle"

    .line 167
    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "uiType"

    .line 168
    invoke-interface {v0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 169
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 170
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 171
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v10, Ljava/util/Map;

    :goto_0
    const/4 v11, 0x1

    const/4 v12, 0x3

    if-eq v9, v11, :cond_3

    if-ne v9, v1, :cond_1

    .line 174
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "Language"

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v11, p0

    .line 175
    invoke-direct {v11, v0, v10}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    move-object/from16 v11, p0

    :try_start_0
    const-string v13, "values"

    .line 178
    invoke-interface {v0, v3, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 179
    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "colors"

    .line 180
    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/CharSequence;

    const-string v13, ","

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 181
    new-instance v15, Lcom/miui/maml/widget/edit/ColorConfig;

    const-string v1, "varName"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v14, v3, v3, v13}, Lcom/miui/maml/widget/edit/ColorConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x1e

    if-lt v1, v9, :cond_2

    goto :goto_2

    :cond_1
    move-object/from16 v11, p0

    if-ne v9, v12, :cond_2

    .line 188
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 192
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    :catch_0
    const/4 v1, 0x2

    goto :goto_0

    .line 194
    :cond_3
    :goto_2
    invoke-interface {v0, v12, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/miui/maml/widget/edit/ColorGroupConfig;

    .line 196
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v10, v3

    .line 199
    :cond_4
    invoke-static {v8}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v1

    move-object v2, v0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v10

    move v6, v1

    .line 195
    invoke-direct/range {v2 .. v7}, Lcom/miui/maml/widget/edit/ColorGroupConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/util/List;)V

    check-cast v0, Lcom/miui/maml/widget/edit/BaseConfig;

    return-object v0
.end method

.method private final readCustomEditLink(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/CustomEditLinkConfig;
    .locals 2

    const/4 p0, 0x0

    const-string v0, "deeplink"

    .line 265
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "parser.getAttributeValue(null, \"deeplink\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    new-instance v0, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1, p0}, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final readImagePick(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/ImagePickConfig;
    .locals 4

    const-string p0, "ImagePick"

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 389
    invoke-interface {p1, v1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    .line 390
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v3, 0x3

    .line 392
    invoke-interface {p1, v3, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance p0, Lcom/miui/maml/widget/edit/ImagePickConfig;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/miui/maml/widget/edit/ImagePickConfig;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private final readImageSelect(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/ImageSelectConfig;
    .locals 18

    move-object/from16 v0, p1

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x2

    const-string v3, "ImageSelect"

    const/4 v4, 0x0

    .line 273
    invoke-interface {v0, v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v5, "name"

    .line 274
    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "displayTitle"

    .line 275
    invoke-interface {v0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uiType"

    .line 276
    invoke-interface {v0, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "width"

    .line 277
    invoke-interface {v0, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    const-string v11, "300"

    :goto_0
    const-string v12, "height"

    .line 278
    invoke-interface {v0, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    const-string v12, "200"

    .line 279
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 280
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    .line 281
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v14, Ljava/util/Map;

    const/16 v16, 0x0

    :goto_2
    const/4 v15, 0x1

    if-eq v13, v15, :cond_7

    if-ne v13, v2, :cond_5

    .line 284
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v15, "Language"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p0

    .line 285
    invoke-direct {v2, v0, v14}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_4

    :cond_2
    move-object/from16 v2, p0

    .line 287
    invoke-interface {v0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 289
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    const-string v2, "parser.nextText()"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v16, :cond_4

    if-eqz v15, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    move/from16 v16, v17

    .line 294
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x32

    if-lt v2, v4, :cond_6

    goto :goto_5

    :cond_5
    const/4 v2, 0x3

    if-ne v13, v2, :cond_6

    .line 300
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_5

    .line 304
    :cond_6
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    :catch_0
    const/4 v2, 0x2

    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    :goto_5
    const/4 v2, 0x3

    const/4 v4, 0x0

    .line 306
    invoke-interface {v0, v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Lcom/miui/maml/widget/edit/ImageSelectConfig;

    .line 308
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v5, v4

    goto :goto_6

    :cond_8
    move-object v5, v14

    :goto_6
    if-eqz v16, :cond_9

    goto :goto_7

    :cond_9
    move-object v1, v4

    .line 313
    :goto_7
    invoke-static {v11}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v8

    .line 314
    invoke-static {v12}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v11

    .line 315
    invoke-static {v10}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v10

    move-object v2, v0

    move-object v3, v7

    move-object v4, v9

    move-object v7, v1

    move v9, v11

    .line 307
    invoke-direct/range {v2 .. v10}, Lcom/miui/maml/widget/edit/ImageSelectConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;III)V

    return-object v0
.end method

.method private final readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    const-string v0, "locale"

    .line 397
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "displayTitle"

    .line 398
    invoke-interface {p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 400
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final readOnOff(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/OnOffConfig;
    .locals 11

    const/4 v0, 0x2

    const-string v1, "OnOff"

    const/4 v2, 0x0

    .line 365
    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    .line 366
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "displayTitle"

    .line 367
    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    .line 368
    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 369
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 370
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 371
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v8, Ljava/util/Map;

    :goto_1
    const/4 v9, 0x1

    const/4 v10, 0x3

    if-eq v7, v9, :cond_3

    if-ne v7, v0, :cond_1

    .line 374
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Language"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 375
    invoke-direct {p0, p1, v8}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    if-ne v7, v10, :cond_2

    .line 378
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 382
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_1

    .line 384
    :cond_3
    :goto_3
    invoke-interface {p1, v10, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 385
    new-instance p0, Lcom/miui/maml/widget/edit/OnOffConfig;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v8

    :goto_4
    invoke-direct {p0, v4, v5, v2, v6}, Lcom/miui/maml/widget/edit/OnOffConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object p0
.end method

.method private final readSetDate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/DateSetConfig;
    .locals 13

    const/4 v0, 0x2

    const-string v1, "SetDate"

    const/4 v2, 0x0

    .line 320
    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    .line 321
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "displayTitle"

    .line 322
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "default"

    .line 323
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "repeatVar"

    .line 324
    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "parser.getAttributeValue(null, \"repeatVar\")"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "repeat"

    .line 325
    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v7, "0"

    .line 326
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 327
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 328
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v9, Ljava/util/Map;

    :goto_1
    const/4 v11, 0x1

    const/4 v12, 0x3

    if-eq v8, v11, :cond_3

    if-ne v8, v0, :cond_1

    .line 331
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "Language"

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 332
    invoke-direct {p0, p1, v9}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    if-ne v8, v12, :cond_2

    .line 335
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    .line 339
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_1

    .line 341
    :cond_3
    :goto_3
    invoke-interface {p1, v12, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    if-eqz v4, :cond_4

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    .line 347
    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0

    .line 348
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readSetDate fail, default value invalid."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParseEditMamlConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_4
    :goto_4
    new-instance v0, Lcom/miui/maml/widget/edit/DateSetConfig;

    .line 355
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, v9

    .line 360
    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object v4, v0

    move-object v7, v2

    move-wide v8, p0

    .line 354
    invoke-direct/range {v4 .. v11}, Lcom/miui/maml/widget/edit/DateSetConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;I)V

    return-object v0
.end method

.method private final readText(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/EditTextConfig;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    const/4 v0, 0x2

    const-string v1, "Text"

    const/4 v2, 0x0

    .line 94
    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    .line 95
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parser.getAttributeValue(null, ATTR_NAME)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "displayTitle"

    .line 96
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "editable"

    .line 97
    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "minLength"

    .line 98
    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "maxLength"

    .line 99
    invoke-interface {p1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 100
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 101
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 102
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v10, Ljava/util/Map;

    :goto_0
    const/4 v11, 0x1

    const/4 v12, 0x3

    if-eq v9, v11, :cond_3

    if-ne v9, v0, :cond_1

    .line 105
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Language"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 106
    invoke-direct {p0, p1, v10}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    .line 108
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    const-string v11, "parser.nextText()"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/16 v11, 0x64

    if-lt v9, v11, :cond_2

    goto :goto_2

    :cond_1
    if-ne v9, v12, :cond_2

    .line 112
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    .line 116
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_0

    .line 118
    :cond_3
    :goto_2
    invoke-interface {p1, v12, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance p0, Lcom/miui/maml/widget/edit/EditTextConfig;

    .line 122
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    move-object v10, v2

    .line 125
    :cond_4
    invoke-static {v7}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v7

    .line 126
    invoke-static {v8}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v8

    move-object v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    .line 119
    invoke-direct/range {v1 .. v8}, Lcom/miui/maml/widget/edit/EditTextConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;ZII)V

    return-object p0
.end method

.method private final readTextSize(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/TextSizeConfig;
    .locals 10

    const-string v0, "name"

    const/4 v1, 0x0

    .line 205
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "displayTitle"

    .line 206
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "default"

    .line 207
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "from"

    .line 208
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "to"

    .line 209
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    .line 211
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    :goto_0
    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 214
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Language"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 215
    invoke-direct {p0, p1, v7}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 218
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FontSize"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 222
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_0

    .line 224
    :cond_2
    :goto_2
    new-instance p0, Lcom/miui/maml/widget/edit/TextSizeConfig;

    .line 225
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v7

    .line 228
    :goto_3
    invoke-static {v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result p1

    .line 229
    invoke-static {v5}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v7

    .line 230
    invoke-static {v6}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v8

    move-object v2, p0

    move-object v5, v1

    move v6, p1

    .line 224
    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/widget/edit/TextSizeConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;III)V

    return-object p0
.end method

.method private final skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    :goto_1
    if-eqz v1, :cond_3

    .line 409
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    if-eq p0, v0, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 406
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private static final string2int(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 47
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method
