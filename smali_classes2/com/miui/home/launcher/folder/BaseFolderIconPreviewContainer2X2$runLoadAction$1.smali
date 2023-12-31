.class public final Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;
.super Ljava/lang/Object;
.source "BaseFolderIconPreviewContainer2X2.kt"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->runLoadAction(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseFolderIconPreviewContainer2X2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseFolderIconPreviewContainer2X2.kt\ncom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1\n*L\n1#1,499:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $currentIndex:I

.field final synthetic $iconCache:Lcom/miui/home/launcher/IconCache;

.field final synthetic $isToggle:Z

.field final synthetic $si:Lcom/miui/home/launcher/ShortcutInfo;

.field final synthetic this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;ILcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/IconCache;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/IconCache;",
            "Z)V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iput p2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$currentIndex:I

    iput-object p3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p4, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$iconCache:Lcom/miui/home/launcher/IconCache;

    iput-boolean p5, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$isToggle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 224
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 225
    :try_start_0
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$currentIndex:I

    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMRealPvChildCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 226
    monitor-exit p1

    return-object v2

    .line 228
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 229
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    monitor-exit p1

    .line 230
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    .line 231
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$iconCache:Lcom/miui/home/launcher/IconCache;

    .line 232
    iget-boolean v4, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$isToggle:Z

    if-eqz v4, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 230
    :goto_0
    invoke-virtual {p1, v1, v3, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2X2 got icon for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " drawable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->access$canDrawableAnimating(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 237
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, p1

    :cond_4
    :goto_1
    return-object v2

    :catchall_0
    move-exception p0

    .line 224
    monitor-exit p1

    throw p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 220
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->apply(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
