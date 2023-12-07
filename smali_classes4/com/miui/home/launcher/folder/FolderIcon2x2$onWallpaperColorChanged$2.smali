.class final Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$2;
.super Ljava/lang/Object;
.source "FolderIcon2x2.kt"

# interfaces
.implements Ljava/util/function/Consumer;


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
        "Ljava/util/function/Consumer<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$2;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$2;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->access$setMFolderBackground$p(Lcom/miui/home/launcher/folder/FolderIcon2x2;Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$2;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->access$getMFolderBackground$p(Lcom/miui/home/launcher/folder/FolderIcon2x2;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 117
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$2;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setFolderIconPlaceholderDrawableMatchingWallpaperColor()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$2;->accept(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
