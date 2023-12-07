.class final Lcom/miui/home/launcher/folder/FolderIcon2x2_4$getPreviewPosition$scale$1;
.super Ljava/lang/Object;
.source "FolderIcon2x2_4.kt"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->getPreviewPosition(Landroid/graphics/Rect;)F
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
        "Ljava/util/function/Predicate<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2_4;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIcon2x2_4;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4$getPreviewPosition$scale$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2_4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Landroid/view/View;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4$getPreviewPosition$scale$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2_4;

    if-eq p1, p0, :cond_1

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->access$getMLauncher$p(Lcom/miui/home/launcher/folder/FolderIcon2x2_4;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const-string v0, "mLauncher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getScreenContent()Landroid/widget/FrameLayout;

    move-result-object p0

    if-ne p1, p0, :cond_0

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

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4$getPreviewPosition$scale$1;->test(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
