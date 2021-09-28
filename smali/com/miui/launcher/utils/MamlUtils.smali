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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListenerOnElement(Ljava/lang/Object;Ljava/lang/String;Lcom/miui/launcher/views/MamlButtonActionListener;)Z
    .locals 2

    .line 340
    instance-of v0, p0, Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 341
    check-cast p0, Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object p0

    check-cast p0, Lmiui/maml/elements/ButtonScreenElement;

    if-nez p0, :cond_0

    const-string p0, "Launcher.MamlUtils"

    const-string p1, "No clock button in this clock."

    .line 343
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 346
    :cond_0
    new-instance p1, Lcom/miui/launcher/utils/MamlUtils$2;

    invoke-direct {p1, p2}, Lcom/miui/launcher/utils/MamlUtils$2;-><init>(Lcom/miui/launcher/views/MamlButtonActionListener;)V

    .line 367
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ButtonScreenElement;->setListener(Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static changeToFancyDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 187
    instance-of v0, p1, Lmiui/maml/AnimatingDrawable;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Lmiui/maml/AnimatingDrawable;

    invoke-virtual {p1}, Lmiui/maml/AnimatingDrawable;->getFancyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 189
    new-instance v0, Lcom/miui/launcher/utils/MamlUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/miui/launcher/utils/MamlUtils$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static clearDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 205
    instance-of v0, p0, Lmiui/maml/AnimatingDrawable;

    if-eqz v0, :cond_0

    .line 206
    check-cast p0, Lmiui/maml/AnimatingDrawable;

    invoke-virtual {p0}, Lmiui/maml/AnimatingDrawable;->clear()V

    :cond_0
    return-void
.end method

.method public static clearMamlCache()V
    .locals 0

    .line 393
    invoke-static {}, Lmiui/maml/util/AppIconsHelper;->clearCache()V

    return-void
.end method

.method public static clearUpView(Landroid/view/View;)V
    .locals 1

    .line 158
    instance-of v0, p0, Lmiui/maml/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 159
    check-cast p0, Lmiui/maml/MiAdvancedView;

    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->cleanUp()V

    :cond_0
    return-void
.end method

.method public static clearUpView(Landroid/view/View;Z)V
    .locals 1

    .line 164
    instance-of v0, p0, Lmiui/maml/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 165
    check-cast p0, Lmiui/maml/MiAdvancedView;

    invoke-virtual {p0, p1}, Lmiui/maml/MiAdvancedView;->cleanUp(Z)V

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

    .line 257
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p0, "config.xml"

    .line 259
    invoke-virtual {v2, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 265
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

    .line 261
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 265
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

    .line 269
    :catch_4
    :cond_3
    throw p0
.end method

.method public static createAwesomeGadgetView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    .line 122
    instance-of v0, p1, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lmiui/maml/MiAdvancedView;

    check-cast p1, Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-static {v1}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lmiui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createGlobalAdvancedView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    .line 110
    invoke-static {}, Lmiui/maml/RenderThread;->globalThread()Lmiui/maml/RenderThread;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lmiui/maml/RenderThread;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {v0}, Lmiui/maml/RenderThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/miui/launcher/utils/MamlUtils;->createMiAdvancedView(Landroid/content/Context;Ljava/lang/Object;Lmiui/maml/RenderThread;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static createMiAdvancedView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 99
    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/launcher/utils/MamlUtils;->createMiAdvancedView(Landroid/content/Context;Ljava/lang/Object;Lmiui/maml/RenderThread;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static createMiAdvancedView(Landroid/content/Context;Ljava/lang/Object;Lmiui/maml/RenderThread;)Landroid/view/View;
    .locals 1

    .line 103
    instance-of v0, p1, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lmiui/maml/MiAdvancedView;

    check-cast p1, Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, p0, p1, p2}, Lmiui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createScreenContext(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 135
    new-instance v0, Lmiui/maml/ScreenContext;

    new-instance v1, Lmiui/maml/util/ZipResourceLoader;

    invoke-direct {v1, p1}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 135
    invoke-virtual {v1, p1}, Lmiui/maml/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;)V

    return-object v0
.end method

.method public static createScreenContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 140
    new-instance v0, Lmiui/maml/ScreenContext;

    new-instance v1, Lmiui/maml/util/ZipResourceLoader;

    invoke-direct {v1, p1, p2}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 140
    invoke-virtual {v1, p1}, Lmiui/maml/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;)V

    return-object v0
.end method

.method public static createScreenElementRoot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 145
    instance-of v0, p0, Lmiui/maml/ScreenContext;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lmiui/maml/ScreenElementRoot;

    check-cast p0, Lmiui/maml/ScreenContext;

    invoke-direct {v0, p0}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 329
    invoke-static/range {p0 .. p5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getManifestRoot(Ljava/lang/Object;)Lorg/w3c/dom/Element;
    .locals 1

    .line 333
    instance-of v0, p0, Lmiui/maml/ScreenContext;

    if-eqz v0, :cond_0

    .line 334
    check-cast p0, Lmiui/maml/ScreenContext;

    iget-object p0, p0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {p0}, Lmiui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getQuietDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 321
    instance-of v0, p0, Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    .line 322
    check-cast p0, Lmiui/maml/FancyDrawable;

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRawAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 312
    instance-of v0, p0, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 313
    check-cast p0, Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 314
    :cond_0
    instance-of v0, p0, Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_1

    .line 315
    check-cast p0, Lmiui/maml/FancyDrawable;

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStartDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 178
    instance-of v0, p0, Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    .line 179
    check-cast p0, Lmiui/maml/FancyDrawable;

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 180
    :cond_0
    instance-of v0, p0, Lmiui/maml/AnimatingDrawable;

    if-eqz v0, :cond_1

    .line 181
    check-cast p0, Lmiui/maml/AnimatingDrawable;

    invoke-virtual {p0}, Lmiui/maml/AnimatingDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static initView(Landroid/view/View;)V
    .locals 1

    .line 152
    instance-of v0, p0, Lmiui/maml/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 153
    check-cast p0, Lmiui/maml/MiAdvancedView;

    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->init()V

    :cond_0
    return-void
.end method

.method public static isFancyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 385
    instance-of p0, p0, Lmiui/maml/FancyDrawable;

    return p0
.end method

.method public static isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 381
    instance-of v0, p0, Lmiui/maml/FancyDrawable;

    if-nez v0, :cond_1

    instance-of p0, p0, Lmiui/maml/AnimatingDrawable;

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

    .line 201
    instance-of v0, p0, Lmiui/maml/FancyDrawable;

    if-nez v0, :cond_1

    instance-of p0, p0, Lmiui/maml/AnimatingDrawable;

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

    .line 246
    instance-of v0, p0, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 247
    check-cast p0, Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static loadConfig(Ljava/lang/Object;)V
    .locals 1

    .line 240
    instance-of v0, p0, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 241
    check-cast p0, Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->loadConfig()V

    :cond_0
    return-void
.end method

.method public static notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 232
    instance-of v0, p0, Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lmiui/maml/FancyDrawable;

    invoke-virtual {v0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_0
    instance-of v0, p0, Lmiui/maml/AnimatingDrawable;

    if-eqz v0, :cond_1

    .line 235
    check-cast p0, Lmiui/maml/AnimatingDrawable;

    invoke-virtual {p0, p1}, Lmiui/maml/AnimatingDrawable;->sendCommand(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onCommand(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 170
    instance-of v0, p0, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 171
    check-cast p0, Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    instance-of v0, p0, Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Lmiui/maml/FancyDrawable;

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onPause(Ljava/lang/Object;)V
    .locals 1

    .line 211
    instance-of v0, p0, Lmiui/maml/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 212
    check-cast p0, Lmiui/maml/MiAdvancedView;

    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->invalidate()V

    .line 213
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->onPause()V

    goto :goto_0

    .line 214
    :cond_0
    instance-of v0, p0, Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Lmiui/maml/FancyDrawable;

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->onPause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onResume(Ljava/lang/Object;)V
    .locals 1

    .line 224
    instance-of v0, p0, Lmiui/maml/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 225
    check-cast p0, Lmiui/maml/MiAdvancedView;

    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->onResume()V

    goto :goto_0

    .line 226
    :cond_0
    instance-of v0, p0, Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Lmiui/maml/FancyDrawable;

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 306
    instance-of v0, p0, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 307
    check-cast p0, Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {p1, p0, p2}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static requestUpdate(Ljava/lang/Object;)V
    .locals 1

    .line 291
    instance-of v0, p0, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 292
    check-cast p0, Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public static setConfig(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 274
    instance-of v0, p0, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 275
    check-cast p0, Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->setConfig(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setDefaultFramerate(Ljava/lang/Object;F)V
    .locals 1

    .line 285
    instance-of v0, p0, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 286
    check-cast p0, Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->setDefaultFramerate(F)V

    :cond_0
    return-void
.end method

.method public static setFocusable(Landroid/view/View;Z)V
    .locals 1

    .line 129
    instance-of v0, p0, Lmiui/maml/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 130
    check-cast p0, Lmiui/maml/MiAdvancedView;

    invoke-virtual {p0, p1}, Lmiui/maml/MiAdvancedView;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method public static setGlobalThreadPause(Z)V
    .locals 1

    .line 389
    invoke-static {}, Lmiui/maml/RenderThread;->globalThread()Lmiui/maml/RenderThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/maml/RenderThread;->setPaused(Z)V

    return-void
.end method

.method public static setOnExternCommandListener(Ljava/lang/Object;Lcom/miui/launcher/views/MamlOnExternCommandListener;)V
    .locals 1

    .line 375
    instance-of v0, p0, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 376
    check-cast p0, Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/launcher/views/MamlOnExternCommandListener;->getListenerDelegate()Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V

    :cond_0
    return-void
.end method

.method public static setRenderThreadPause(Z)V
    .locals 1

    .line 220
    invoke-static {}, Lmiui/maml/RenderThread;->globalThread()Lmiui/maml/RenderThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/maml/RenderThread;->setPaused(Z)V

    return-void
.end method

.method public static setScaleByDensity(Ljava/lang/Object;Z)V
    .locals 1

    .line 280
    instance-of v0, p0, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 281
    check-cast p0, Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->setScaleByDensity(Z)V

    :cond_0
    return-void
.end method

.method public static snapshootLockscreen(Landroid/content/Context;ILandroid/graphics/Bitmap;ZII)Landroid/graphics/Bitmap;
    .locals 15

    move-object/from16 v0, p2

    const-string v1, "/data/system/theme/lockscreen"

    .line 52
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 55
    new-instance v2, Lmiui/maml/util/ZipResourceLoader;

    const-string v5, "advance/"

    invoke-direct {v2, v1, v5}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    :cond_0
    const-string v1, "/system/media/theme/default/gadgets/clock_classical.mrc"

    .line 58
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v4

    .line 61
    :cond_1
    new-instance v2, Lmiui/maml/util/ZipResourceLoader;

    invoke-direct {v2, v1}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    move/from16 v3, p4

    move/from16 v1, p5

    .line 64
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Lmiui/maml/ResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    .line 65
    new-instance v5, Lmiui/maml/ScreenContext;

    new-instance v6, Lcom/miui/launcher/utils/MamlUtils$LockscreenElementFactory;

    invoke-direct {v6}, Lcom/miui/launcher/utils/MamlUtils$LockscreenElementFactory;-><init>()V

    move-object v7, p0

    invoke-direct {v5, p0, v2, v6}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/elements/ScreenElementFactory;)V

    .line 66
    new-instance v2, Lmiui/maml/ScreenElementRoot;

    invoke-direct {v2, v5}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    .line 67
    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result v6

    if-nez v6, :cond_2

    return-object v4

    .line 70
    :cond_2
    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->init()V

    const-string v6, "applied_light_wallpaper"

    .line 72
    iget-object v7, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v8, 0x2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v11, 0x0

    move/from16 v13, p1

    if-ne v13, v8, :cond_3

    move-wide v13, v9

    goto :goto_1

    :cond_3
    move-wide v13, v11

    :goto_1
    invoke-static {v6, v7, v13, v14}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    if-nez v0, :cond_4

    return-object v4

    .line 77
    :cond_4
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v3, v3

    int-to-float v1, v1

    .line 78
    invoke-virtual {v4, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 80
    invoke-virtual {v2, v6, v7}, Lmiui/maml/ScreenElementRoot;->tick(J)V

    .line 81
    invoke-virtual {v2, v4}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->finish()V

    const-string v1, "applied_light_wallpaper"

    .line 83
    iget-object v2, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    if-eqz p3, :cond_5

    move-wide v11, v9

    :cond_5
    invoke-static {v1, v2, v11, v12}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    return-object v0
.end method

.method public static updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V
    .locals 1

    .line 297
    instance-of v0, p1, Lmiui/maml/ScreenContext;

    if-eqz v0, :cond_0

    .line 298
    check-cast p1, Lmiui/maml/ScreenContext;

    iget-object p1, p1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {p2, p1, p3, p4}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 300
    :cond_0
    instance-of p1, p0, Lmiui/maml/ScreenElementRoot;

    if-eqz p1, :cond_1

    .line 301
    check-cast p0, Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_1
    return-void
.end method
