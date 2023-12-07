.class public Lcom/market/sdk/homeguide/AppstoreUserGuide;
.super Ljava/lang/Object;


# static fields
.field private static final PREF_KEY_NEED_SHOWN:Ljava/lang/String; = "need_show_user_guide"

.field private static final SETTINGS_NOT_SHOW_GUIDE:I = 0x2

.field private static final SETTINGS_SHOW_GUIDE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppstoreUserGuide"

.field public static final sHomeUserGuideEnableLanguages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sHomeUserGuideEnableRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableRegions:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableLanguages:Ljava/util/Set;

    sget-object v0, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableRegions:Ljava/util/Set;

    const-string v1, "IN"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableRegions:Ljava/util/Set;

    const-string v1, "ID"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableRegions:Ljava/util/Set;

    const-string v1, "RU"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableRegions:Ljava/util/Set;

    const-string v1, "ES"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableLanguages:Ljava/util/Set;

    const-string v1, "en"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableLanguages:Ljava/util/Set;

    const-string v1, "in"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableLanguages:Ljava/util/Set;

    const-string v1, "ru"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableLanguages:Ljava/util/Set;

    const-string v1, "es"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private captureWallpaper()Landroid/graphics/Bitmap;
    .locals 10

    const-string v0, "miui.util.ScreenshotUtils"

    invoke-static {v0}, Lcom/market/sdk/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    invoke-static {v1, v3}, Lcom/market/sdk/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/market/sdk/homeguide/AppstoreUserGuide;->getLayerForWallPaper()I

    move-result p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v8

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v9

    const-string p0, "getScreenshot"

    invoke-static {v0, v0, p0, v1, v2}, Lcom/market/sdk/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private createBackgroundBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/market/sdk/utils/ResourceUtils;->getScreenWidth()I

    move-result p2

    invoke-static {}, Lcom/market/sdk/utils/ResourceUtils;->getScreenHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p2
.end method

.method private getLayerForWallPaper()I
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_0

    const/16 p0, 0x2af8

    goto :goto_0

    :cond_0
    const/16 p0, 0x5208

    :goto_0
    return p0
.end method

.method private show(Lcom/market/sdk/homeguide/HomeUserGuideData;Lcom/market/sdk/homeguide/Interceptor;)V
    .locals 2

    invoke-static {}, Lcom/market/sdk/homeguide/AppstoreUserGuideService;->getUserGuideIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "AppstoreUserGuide"

    const-string p1, "can not found user guide service"

    invoke-static {p0, p1}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/market/sdk/homeguide/AppstoreUserGuideService;->openService()Lcom/market/sdk/homeguide/AppstoreUserGuideService;

    move-result-object v0

    new-instance v1, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;-><init>(Lcom/market/sdk/homeguide/AppstoreUserGuide;Lcom/market/sdk/homeguide/Interceptor;Lcom/market/sdk/homeguide/HomeUserGuideData;)V

    invoke-virtual {v0, p1, v1}, Lcom/market/sdk/homeguide/AppstoreUserGuideService;->tryShow(Lcom/market/sdk/homeguide/HomeUserGuideData;Lcom/market/sdk/homeguide/Callback;)V

    return-void
.end method


# virtual methods
.method public getTargetClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.xiaomi.market.ui.MarketTabActivity"

    return-object p0
.end method

.method public getTargetPackageName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.xiaomi.mipicks"

    return-object p0
.end method

.method public needShowUserGuide()Z
    .locals 5

    invoke-static {}, Lcom/market/sdk/utils/Build;->isInternational()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-array p0, v0, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    const/4 v1, 0x1

    const-string v2, "need_show_user_guide"

    invoke-static {v2, v1, p0}, Lcom/market/sdk/utils/PrefUtils;->getBoolean(Ljava/lang/String;Z[Lcom/market/sdk/utils/PrefUtils$PrefFile;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/market/sdk/utils/ResourceUtils;->isBigFontMode()Z

    move-result p0

    const-string v2, "AppstoreUserGuide"

    if-eqz p0, :cond_2

    const-string p0, "do not show appstore guide in big font mode"

    invoke-static {v2, p0}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v3, -0x1

    const-string v4, "com.xiaomi.mipicks.need_show_user_guide_status"

    invoke-static {p0, v4, v3}, Lcom/market/sdk/utils/SettingsCompat$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_3

    return v1

    :cond_3
    const/4 v3, 0x2

    if-ne p0, v3, :cond_4

    return v0

    :cond_4
    sget-object p0, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableRegions:Ljava/util/Set;

    invoke-static {}, Lcom/market/sdk/utils/Region;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string v3, ", expected is: "

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "region not match, current is: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/market/sdk/utils/Region;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableRegions:Ljava/util/Set;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    sget-object p0, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableLanguages:Ljava/util/Set;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "language not match, current is: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/market/sdk/homeguide/AppstoreUserGuide;->sHomeUserGuideEnableLanguages:Ljava/util/Set;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_6
    invoke-static {}, Lcom/market/sdk/homeguide/AppstoreUserGuideService;->getUserGuideIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_7

    const-string p0, "no service found to show appstore guide"

    invoke-static {v2, p0}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_7
    return v1
.end method

.method public tryShowUserGuide(Landroid/graphics/Bitmap;Lcom/market/sdk/homeguide/HomeUserGuideData;Lcom/market/sdk/homeguide/Interceptor;)V
    .locals 3

    invoke-direct {p0}, Lcom/market/sdk/homeguide/AppstoreUserGuide;->captureWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "AppstoreUserGuide"

    if-nez v0, :cond_0

    const-string p0, "capture wallpaper failed!"

    invoke-static {v1, p0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/market/sdk/homeguide/HomeUserGuideData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1}, Lcom/market/sdk/homeguide/AppstoreUserGuide;->createBackgroundBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v2, v0}, Lcom/market/sdk/utils/BitmapFactory;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/market/sdk/homeguide/AppstoreUserGuide;->show(Lcom/market/sdk/homeguide/HomeUserGuideData;Lcom/market/sdk/homeguide/Interceptor;)V

    return-void
.end method
