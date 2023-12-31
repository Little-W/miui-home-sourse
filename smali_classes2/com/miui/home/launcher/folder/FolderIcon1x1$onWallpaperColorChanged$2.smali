.class final Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$2;
.super Ljava/lang/Object;
.source "FolderIcon1x1.kt"

# interfaces
.implements Ljava/util/function/Consumer;


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
        "Ljava/util/function/Consumer<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$2;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$2;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$setMFolderBackground$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "it"

    .line 115
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$2;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getMFolderBackground$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$2;->accept(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
