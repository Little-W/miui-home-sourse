.class public Lcom/miui/home/launcher/gadget/GadgetInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "GadgetInfo.java"


# static fields
.field private static final sCategoryMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategoryId:I

.field private mGadgetId:I

.field private mIconResId:I

.field private mIdentityInfo:Ljava/lang/String;

.field private mIsDualClock:Z

.field private mMtzFile:Ljava/util/zip/ZipFile;

.field private mMtzLoaded:Z

.field private mMtzMockWidgetId:I

.field private mMtzMockWidgetProvider:Landroid/content/ComponentName;

.field private mMtzTitle:Ljava/lang/String;

.field private mMtzUri:Landroid/net/Uri;

.field private mPreviewImageResId:I

.field private mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    .line 71
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "clean"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "player"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "clock"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "photo"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "weather"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "search"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "calendar"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "notes"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "calculator"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 113
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mPreviewImageResId:I

    .line 86
    iput v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzFile:Ljava/util/zip/ZipFile;

    .line 88
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 89
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzLoaded:Z

    .line 92
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetProvider:Landroid/content/ComponentName;

    .line 93
    iput v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetId:I

    .line 114
    iput p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    const/4 p1, 0x5

    .line 115
    iput p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(I)V

    .line 120
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->calculateGadgetSpan(II)V

    .line 121
    iput p4, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleResId:I

    .line 122
    iput p5, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconResId:I

    .line 123
    iput p6, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mPreviewImageResId:I

    .line 124
    iput p7, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", mCategoryId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", title="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIdentityInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 142
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(I)V

    .line 143
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    return-void
.end method

.method private getMtzInnerDrawable(Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 426
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerInputStream(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 429
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {v1, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 430
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v1

    :cond_1
    return-object v1
.end method

.method private getMtzInnerInputStream(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 440
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 442
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 445
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMtzZipFile()Ljava/util/zip/ZipFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzFile:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 461
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 239
    invoke-static {p0, v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->moveToNextStartTagOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static moveToNextStartTagOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 248
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_1
    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 252
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private stringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 348
    :cond_0
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 349
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1, p1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public calculateGadgetSpan(II)V
    .locals 1

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->is1x1Gadget(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellDefaultWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellDefaultHeight()I

    move-result p1

    mul-int/2addr p1, p2

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanY(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    goto :goto_0

    .line 137
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 138
    iput p2, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    :goto_0
    return-void
.end method

.method public bridge synthetic clone()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->clone()Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 1

    .line 514
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->clone()Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAnnounceForDelete()Ljava/lang/String;
    .locals 2

    .line 524
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100061

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 5

    .line 257
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 262
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzZipFile()Ljava/util/zip/ZipFile;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v3, "description.xml"

    .line 263
    invoke-direct {p0, v2, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerInputStream(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    .line 265
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 266
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 268
    :cond_0
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/GadgetInfo;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    move-object v0, v3

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, v3

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v0, v3

    goto :goto_5

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 287
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v2, :cond_8

    .line 290
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_a

    .line 293
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_1
    move-exception p1

    move-object v3, v0

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_3

    :catch_5
    move-exception p1

    goto :goto_4

    :catch_6
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    goto :goto_6

    :catch_7
    move-exception p1

    move-object v2, v0

    .line 283
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_3

    .line 287
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v2, :cond_8

    .line 290
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :catch_8
    move-exception p1

    move-object v2, v0

    .line 281
    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_4

    .line 287
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v2, :cond_8

    .line 290
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_a

    :catch_9
    move-exception p1

    move-object v2, v0

    .line 278
    :goto_5
    :try_start_8
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_5

    .line 287
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_8

    .line 290
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_a

    :goto_6
    if-eqz v3, :cond_6

    .line 287
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catch_a
    move-exception v0

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    .line 290
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_9

    .line 293
    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 295
    :cond_7
    :goto_9
    throw p1

    :cond_8
    :goto_a
    return v1
.end method

.method public getCategoryId()I
    .locals 2

    .line 220
    iget v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    :goto_0
    return v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .line 302
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzZipFile()Ljava/util/zip/ZipFile;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "description.xml"

    .line 308
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerInputStream(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 310
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 311
    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 313
    :cond_0
    invoke-static {v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 314
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    .line 316
    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->stringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 332
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 335
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_a

    .line 338
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v2, v1

    goto :goto_3

    :catch_5
    move-exception p1

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception p1

    move-object v2, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v0, v1

    move-object v2, v0

    goto :goto_6

    :catch_7
    move-exception p1

    move-object v0, v1

    move-object v2, v0

    .line 328
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_3

    .line 332
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v0, :cond_8

    .line 335
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :catch_8
    move-exception p1

    move-object v0, v1

    move-object v2, v0

    .line 326
    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_4

    .line 332
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v0, :cond_8

    .line 335
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_a

    :catch_9
    move-exception p1

    move-object v0, v1

    move-object v2, v0

    .line 323
    :goto_5
    :try_start_8
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_5

    .line 332
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v0, :cond_8

    .line 335
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_a

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v2, :cond_6

    .line 332
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catch_a
    move-exception v0

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v0, :cond_7

    .line 335
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_9

    .line 338
    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 340
    :cond_7
    :goto_9
    throw p1

    :cond_8
    :goto_a
    return-object v1
.end method

.method public getGadgetId()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    return v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzZipFile()Ljava/util/zip/ZipFile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thumbnail_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/thumbnail_xhdpi.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerDrawable(Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "thumbnail/thumbnail_xhdpi.png"

    .line 175
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerDrawable(Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getPreviewImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070397

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 179
    invoke-static {v0, p1, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 186
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getMtzMockWidgetId()I
    .locals 1

    .line 475
    iget v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetId:I

    return v0
.end method

.method public getMtzMockWidgetProvider()Landroid/content/ComponentName;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetProvider:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getMtzUri()Landroid/net/Uri;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPreviewImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    .line 198
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzZipFile()Ljava/util/zip/ZipFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preview_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/preview_0.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerDrawable(Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "preview/preview_0.jpg"

    .line 204
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerDrawable(Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 211
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 213
    iget v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mPreviewImageResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mPreviewImageResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public is1x1Gadget(II)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDualClock()Z
    .locals 1

    .line 528
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIsDualClock:Z

    return v0
.end method

.method public isMtzGadget()Z
    .locals 2

    .line 456
    iget v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 510
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .line 480
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 481
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xf

    .line 482
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 484
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->loadMtzGadgetFromUri(Landroid/net/Uri;)Z

    :cond_0
    const/16 p1, 0x9

    .line 486
    invoke-interface {p2, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetId:I

    :cond_1
    return-void
.end method

.method public loadMtzGadget()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzLoaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 363
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzZipFile()Ljava/util/zip/ZipFile;

    move-result-object v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v5, "description.xml"

    .line 364
    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzInnerInputStream(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_6

    .line 366
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 367
    invoke-interface {v6, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 369
    :cond_1
    :goto_0
    invoke-static {v6}, Lcom/miui/home/launcher/gadget/GadgetInfo;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v8, "MIUI-Theme"

    .line 370
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v7, "size"

    .line 371
    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, ":"

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 374
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 375
    aget-object v8, v7, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v8, v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;->calculateGadgetSpan(II)V

    :cond_2
    const-string v7, "category"

    .line 378
    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 379
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 380
    sget-object v8, Lcom/miui/home/launcher/gadget/GadgetInfo;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    goto :goto_0

    :cond_3
    const-string v8, "title"

    .line 382
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v7, "locale"

    .line 383
    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, ""

    .line 387
    :cond_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string v8, "mock_widget"

    .line 388
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 389
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetProvider:Landroid/content/ComponentName;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    .line 401
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v4, :cond_a

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v3

    goto/16 :goto_5

    :catch_2
    move-exception v6

    move-object v5, v3

    goto :goto_1

    :catch_3
    move-exception v6

    move-object v5, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    goto :goto_5

    :catch_4
    move-exception v6

    move-object v4, v3

    move-object v5, v4

    .line 398
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_8

    .line 401
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v4, :cond_a

    goto :goto_3

    :catch_5
    move-exception v6

    move-object v4, v3

    move-object v5, v4

    .line 395
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_9

    .line 401
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v4, :cond_a

    .line 404
    :goto_3
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 407
    :cond_a
    iget v4, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    if-lez v4, :cond_10

    iget v4, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    if-lez v4, :cond_10

    .line 408
    iget v2, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    goto :goto_4

    :cond_b
    const/16 v2, 0x9

    :goto_4
    iput v2, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    .line 409
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    .line 410
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 411
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    .line 413
    :cond_c
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    if-nez v2, :cond_d

    const-string v2, ""

    .line 414
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    .line 416
    :cond_d
    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzLoaded:Z

    return v1

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v5, :cond_e

    .line 401
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_e
    if-eqz v4, :cond_f

    .line 404
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 406
    :cond_f
    throw v0

    .line 420
    :cond_10
    iput-object v3, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    return v2
.end method

.method public loadMtzGadgetFromUri(Landroid/net/Uri;)Z
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->loadMtzGadget()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public loadSpan(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    .line 499
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string p1, "appWidgetId"

    .line 500
    iget v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "uri"

    .line 502
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const-string v0, "appWidgetId"

    .line 504
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public printIdentity()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->printIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mCategoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gadgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMtzTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMtzMockWidgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMtzMockWidgetProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetProvider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMtzUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIsDualClock(Z)V
    .locals 0

    .line 532
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIsDualClock:Z

    return-void
.end method

.method public setMtzMockWidgetId(I)V
    .locals 0

    .line 471
    iput p1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mMtzMockWidgetId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gadget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
