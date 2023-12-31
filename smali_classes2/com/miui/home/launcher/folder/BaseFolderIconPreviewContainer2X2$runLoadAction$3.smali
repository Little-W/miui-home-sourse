.class final Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;
.super Ljava/lang/Object;
.source "BaseFolderIconPreviewContainer2X2.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->runLoadAction(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V
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
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseFolderIconPreviewContainer2X2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseFolderIconPreviewContainer2X2.kt\ncom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3\n*L\n1#1,499:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $finalIconIndex:I

.field final synthetic $whitAnim:Z

.field final synthetic this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iput p2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->$finalIconIndex:I

    iput-boolean p3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->$whitAnim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->accept(Ljava/lang/Void;)V

    return-void
.end method

.method public final accept(Ljava/lang/Void;)V
    .locals 5

    .line 265
    :try_start_0
    iget p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->$finalIconIndex:I

    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_4

    .line 267
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMRealPvChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMLargeIconNum()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 268
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz v1, :cond_2

    .line 271
    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v4}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMFolderIconPlaceholderDrawable()Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMFolderIconPlaceholderDrawable()Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz v1, :cond_3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 280
    :catch_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "An IndexOutOfBoundsException occurred when clear Drawable"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_4
    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->$whitAnim:Z

    if-eqz p1, :cond_5

    .line 283
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMFolderIconPreviewAnimDelegate()Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->showPreviewIcon(Ljava/util/List;)V

    :cond_5
    return-void
.end method
