.class final Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$1;
.super Ljava/lang/Object;
.source "FolderIcon1x1.kt"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderIcon1x1;->onWallpaperColorChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getMContext$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "mContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0802d5

    goto :goto_0

    :cond_0
    const v0, 0x7f0802d4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 106
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getMIconCache$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getFolderIconLight(Lcom/miui/home/launcher/folder/FolderIcon1x1;Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 109
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getMIconCache$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getFolderIcon(Lcom/miui/home/launcher/folder/FolderIcon1x1;Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$1;->get()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
