.class public Lcom/miui/launcher/utils/MamlUtils;
.super Ljava/lang/Object;
.source "MamlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/utils/MamlUtils$LockscreenElementFactory;
    }
.end annotation


# static fields
.field public static final BITMAP_COLOR_MODE_DARK:I = 0x0

.field public static final BITMAP_COLOR_MODE_LIGHT:I = 0x2

.field public static final BITMAP_COLOR_MODE_MEDIUM:I = 0x1

.field public static final DEFAULT_SYSTEM_THEME_MTZ_PACKAGE_PATH:Ljava/lang/String; = "/system/media/theme/default/gadgets"

.field public static final LOCK_SCREEN_SRC_PATH:Ljava/lang/String; = "/data/system/theme/lockscreen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListenerOnElement(Ljava/lang/Object;Ljava/lang/String;Lcom/miui/launcher/views/MamlButtonActionListener;)Z
    .locals 2

    .line 339
    instance-of v0, p0, Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 340
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/ButtonScreenElement;

    if-nez p0, :cond_0

    const-string p0, "Launcher.MamlUtils"

    const-string p1, "No clock button in this clock."

    .line 342
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 345
    :cond_0
    new-instance p1, Lcom/miui/launcher/utils/MamlUtils$2;

    invoke-direct {p1, p2}, Lcom/miui/launcher/utils/MamlUtils$2;-><init>(Lcom/miui/launcher/views/MamlButtonActionListener;)V

    .line 366
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ButtonScreenElement;->setListener(Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static changeToFancyDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 186
    instance-of v0, p1, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v0, :cond_0

    .line 187
    check-cast p1, Lcom/miui/maml/AnimatingDrawable;

    invoke-virtual {p1}, Lcom/miui/maml/AnimatingDrawable;->getFancyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 188
    new-instance v0, Lcom/miui/launcher/utils/MamlUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/miui/launcher/utils/MamlUtils$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static clearDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 204
    instance-of v0, p0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v0, :cond_0

    .line 205
    check-cast p0, Lcom/miui/maml/AnimatingDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->clear()V

    :cond_0
    return-void
.end method

.method public static clearMamlCache()V
    .locals 0

    .line 392
    invoke-static {}, Lcom/miui/maml/util/AppIconsHelper;->clearCache()V

    return-void
.end method

.method public static clearUpView(Landroid/view/View;)V
    .locals 1

    .line 157
    instance-of v0, p0, Lcom/miui/maml/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 158
    check-cast p0, Lcom/miui/maml/MiAdvancedView;

    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->cleanUp()V

    :cond_0
    return-void
.end method

.method public static clearUpView(Landroid/view/View;Z)V
    .locals 1

    .line 163
    instance-of v0, p0, Lcom/miui/maml/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 164
    check-cast p0, Lcom/miui/maml/MiAdvancedView;

    invoke-virtual {p0, p1}, Lcom/miui/maml/MiAdvancedView;->cleanUp(Z)V

    :cond_0
    return-void
.end method

.method public static containsConfig(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 256
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p0, "config.xml"

    .line 258
    invoke-virtual {v2, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 264
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 260
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 264
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    return v0

    :goto_1
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 268
    :catch_4
    :cond_3
    throw p0
.end method

.method public static createAwesomeGadgetView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    .line 121
    instance-of v0, p1, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/miui/maml/MiAdvancedView;

    check-cast p1, Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/maml/RenderThread;->globalThread(Z)Lcom/miui/maml/RenderThread;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/RenderThread;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createGlobalAdvancedView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    .line 109
    invoke-static {}, Lcom/miui/maml/RenderThread;->globalThread()Lcom/miui/maml/RenderThread;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/miui/maml/RenderThread;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/maml/RenderThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :catch_0
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/miui/launcher/utils/MamlUtils;->createMiAdvancedView(Landroid/content/Context;Ljava/lang/Object;Lcom/miui/maml/RenderThread;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static createMiAdvancedView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 98
    invoke-static {v0}, Lcom/miui/maml/RenderThread;->globalThread(Z)Lcom/miui/maml/RenderThread;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/launcher/utils/MamlUtils;->createMiAdvancedView(Landroid/content/Context;Ljava/lang/Object;Lcom/miui/maml/RenderThread;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static createMiAdvancedView(Landroid/content/Context;Ljava/lang/Object;Lcom/miui/maml/RenderThread;)Landroid/view/View;
    .locals 1

    .line 102
    instance-of v0, p1, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/miui/maml/MiAdvancedView;

    check-cast p1, Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/RenderThread;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createScreenContext(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 134
    new-instance v0, Lcom/miui/maml/ScreenContext;

    new-instance v1, Lcom/miui/maml/util/ZipResourceLoader;

    invoke-direct {v1, p1}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 134
    invoke-virtual {v1, p1}, Lcom/miui/maml/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lcom/miui/maml/ResourceLoader;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;)V

    return-object v0
.end method

.method public static createScreenContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 139
    new-instance v0, Lcom/miui/maml/ScreenContext;

    new-instance v1, Lcom/miui/maml/util/ZipResourceLoader;

    invoke-direct {v1, p1, p2}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 139
    invoke-virtual {v1, p1}, Lcom/miui/maml/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lcom/miui/maml/ResourceLoader;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;)V

    return-object v0
.end method

.method public static createScreenElementRoot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 144
    instance-of v0, p0, Lcom/miui/maml/ScreenContext;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/miui/maml/ScreenElementRoot;

    check-cast p0, Lcom/miui/maml/ScreenContext;

    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 328
    invoke-static/range {p0 .. p5}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getManifestRoot(Ljava/lang/Object;)Lorg/w3c/dom/Element;
    .locals 1

    .line 332
    instance-of v0, p0, Lcom/miui/maml/ScreenContext;

    if-eqz v0, :cond_0

    .line 333
    check-cast p0, Lcom/miui/maml/ScreenContext;

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {p0}, Lcom/miui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getQuietDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 320
    instance-of v0, p0, Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    .line 321
    check-cast p0, Lcom/miui/maml/FancyDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRawAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 311
    instance-of v0, p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 312
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 313
    :cond_0
    instance-of v0, p0, Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_1

    .line 314
    check-cast p0, Lcom/miui/maml/FancyDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStartDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 177
    instance-of v0, p0, Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    .line 178
    check-cast p0, Lcom/miui/maml/FancyDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 179
    :cond_0
    instance-of v0, p0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v0, :cond_1

    .line 180
    check-cast p0, Lcom/miui/maml/AnimatingDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static initView(Landroid/view/View;)V
    .locals 1

    .line 151
    instance-of v0, p0, Lcom/miui/maml/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 152
    check-cast p0, Lcom/miui/maml/MiAdvancedView;

    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->init()V

    :cond_0
    return-void
.end method

.method public static isFancyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 384
    instance-of p0, p0, Lcom/miui/maml/FancyDrawable;

    return p0
.end method

.method public static isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 380
    instance-of v0, p0, Lcom/miui/maml/FancyDrawable;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPreparedForBackAnim(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 200
    instance-of v0, p0, Lcom/miui/maml/FancyDrawable;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static load(Ljava/lang/Object;)Z
    .locals 1

    .line 245
    instance-of v0, p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 246
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static loadConfig(Ljava/lang/Object;)V
    .locals 1

    .line 239
    instance-of v0, p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 240
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->loadConfig()V

    :cond_0
    return-void
.end method

.method public static notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 231
    instance-of v0, p0, Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/miui/maml/FancyDrawable;

    invoke-virtual {v0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_0
    instance-of v0, p0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v0, :cond_1

    .line 234
    check-cast p0, Lcom/miui/maml/AnimatingDrawable;

    invoke-virtual {p0, p1}, Lcom/miui/maml/AnimatingDrawable;->sendCommand(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onCommand(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 169
    instance-of v0, p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 170
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    instance-of v0, p0, Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/miui/maml/FancyDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onPause(Ljava/lang/Object;)V
    .locals 1

    .line 210
    instance-of v0, p0, Lcom/miui/maml/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 211
    check-cast p0, Lcom/miui/maml/MiAdvancedView;

    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->invalidate()V

    .line 212
    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->onPause()V

    goto :goto_0

    .line 213
    :cond_0
    instance-of v0, p0, Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/miui/maml/FancyDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->onPause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onResume(Ljava/lang/Object;)V
    .locals 1

    .line 223
    instance-of v0, p0, Lcom/miui/maml/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 224
    check-cast p0, Lcom/miui/maml/MiAdvancedView;

    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->onResume()V

    goto :goto_0

    .line 225
    :cond_0
    instance-of v0, p0, Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/miui/maml/FancyDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 305
    instance-of v0, p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 306
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-static {p1, p0, p2}, Lcom/miui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static requestUpdate(Ljava/lang/Object;)V
    .locals 1

    .line 290
    instance-of v0, p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 291
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public static setConfig(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 273
    instance-of v0, p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 274
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setConfig(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setDefaultFramerate(Ljava/lang/Object;F)V
    .locals 1

    .line 284
    instance-of v0, p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 285
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setDefaultFramerate(F)V

    :cond_0
    return-void
.end method

.method public static setFocusable(Landroid/view/View;Z)V
    .locals 1

    .line 128
    instance-of v0, p0, Lcom/miui/maml/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 129
    check-cast p0, Lcom/miui/maml/MiAdvancedView;

    invoke-virtual {p0, p1}, Lcom/miui/maml/MiAdvancedView;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method public static setGlobalThreadPause(Z)V
    .locals 1

    .line 388
    invoke-static {}, Lcom/miui/maml/RenderThread;->globalThread()Lcom/miui/maml/RenderThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/maml/RenderThread;->setPaused(Z)V

    return-void
.end method

.method public static setOnExternCommandListener(Ljava/lang/Object;Lcom/miui/launcher/views/MamlOnExternCommandListener;)V
    .locals 1

    .line 374
    instance-of v0, p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 375
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/launcher/views/MamlOnExternCommandListener;->getListenerDelegate()Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V

    :cond_0
    return-void
.end method

.method public static setRenderThreadPause(Z)V
    .locals 1

    .line 219
    invoke-static {}, Lcom/miui/maml/RenderThread;->globalThread()Lcom/miui/maml/RenderThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/maml/RenderThread;->setPaused(Z)V

    return-void
.end method

.method public static setScaleByDensity(Ljava/lang/Object;Z)V
    .locals 1

    .line 279
    instance-of v0, p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 280
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setScaleByDensity(Z)V

    :cond_0
    return-void
.end method

.method public static snapshootLockscreen(Landroid/content/Context;ILandroid/graphics/Bitmap;ZII)Landroid/graphics/Bitmap;
    .locals 10

    .line 51
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/lockscreen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 54
    new-instance p4, Lcom/miui/maml/util/ZipResourceLoader;

    const-string p5, "advance/"

    invoke-direct {p4, v1, p5}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move p5, v2

    goto :goto_0

    :cond_0
    const-string v0, "/system/media/theme/default/gadgets/clock_classical.mrc"

    .line 57
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v3

    .line 60
    :cond_1
    new-instance v1, Lcom/miui/maml/util/ZipResourceLoader;

    invoke-direct {v1, v0}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    move v2, p4

    move-object p4, v1

    .line 63
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p4, v0}, Lcom/miui/maml/ResourceLoader;->setLocal(Ljava/util/Locale;)Lcom/miui/maml/ResourceLoader;

    .line 64
    new-instance v0, Lcom/miui/maml/ScreenContext;

    new-instance v1, Lcom/miui/launcher/utils/MamlUtils$LockscreenElementFactory;

    invoke-direct {v1}, Lcom/miui/launcher/utils/MamlUtils$LockscreenElementFactory;-><init>()V

    invoke-direct {v0, p0, p4, v1}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Lcom/miui/maml/elements/ScreenElementFactory;)V

    .line 65
    new-instance p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {p0, v0}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    move-result p4

    if-nez p4, :cond_2

    return-object v3

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->init()V

    .line 71
    iget-object p4, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const/4 v1, 0x2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    if-ne p1, v1, :cond_3

    move-wide v8, v4

    goto :goto_1

    :cond_3
    move-wide v8, v6

    :goto_1
    const-string p1, "applied_light_wallpaper"

    invoke-static {p1, p4, v8, v9}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    if-nez p2, :cond_4

    return-object v3

    .line 76
    :cond_4
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v1, v2

    int-to-float p5, p5

    .line 77
    invoke-virtual {p4, v1, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 79
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/ScreenElementRoot;->tick(J)V

    .line 80
    invoke-virtual {p0, p4}, Lcom/miui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 81
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->finish()V

    .line 82
    iget-object p0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    move-wide v4, v6

    :goto_2
    invoke-static {p1, p0, v4, v5}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    return-object p2
.end method

.method public static updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V
    .locals 1

    .line 296
    instance-of v0, p1, Lcom/miui/maml/ScreenContext;

    if-eqz v0, :cond_0

    .line 297
    check-cast p1, Lcom/miui/maml/ScreenContext;

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-static {p2, p1, p3, p4}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 299
    :cond_0
    instance-of p1, p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_1

    .line 300
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_1
    return-void
.end method
