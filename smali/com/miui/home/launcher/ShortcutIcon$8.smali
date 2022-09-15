.class Lcom/miui/home/launcher/ShortcutIcon$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ShortcutIcon;->showFolderCreateBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$8;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 473
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 474
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$8;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getFolderIconLight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$8;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getFolderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
