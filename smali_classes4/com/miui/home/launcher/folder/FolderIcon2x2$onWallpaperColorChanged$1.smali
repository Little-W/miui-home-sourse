.class final Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$1;
.super Ljava/lang/Object;
.source "FolderIcon2x2.kt"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderIcon2x2;->onWallpaperColorChanged()V
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
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    new-instance v1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setMDefaultFolderBackground(Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;)V

    .line 109
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->access$getMIconCache$p(Lcom/miui/home/launcher/folder/FolderIcon2x2;)Lcom/miui/home/launcher/IconCache;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMDefaultFolderBackground()Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->access$getFolderBgGridFourLight(Lcom/miui/home/launcher/folder/FolderIcon2x2;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->access$getMIconCache$p(Lcom/miui/home/launcher/folder/FolderIcon2x2;)Lcom/miui/home/launcher/IconCache;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMDefaultFolderBackground()Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->access$getFolderBgGridFourIcon(Lcom/miui/home/launcher/folder/FolderIcon2x2;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$1;->get()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
