.class Lmiui/home/lib/dialog/AlertController$6;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/home/lib/dialog/AlertController;->setupWindowInsetsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isRealTablet:Z

.field final synthetic this$0:Lmiui/home/lib/dialog/AlertController;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertController;I)V
    .locals 0

    .line 1174
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    const/4 p1, 0x0

    .line 1176
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController$6;->isRealTablet:Z

    return-void
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 3

    .line 1233
    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 1234
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/home/lib/dialog/AlertController;->access$1302(Lmiui/home/lib/dialog/AlertController;Z)Z

    .line 1235
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$2000(Lmiui/home/lib/dialog/AlertController;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1237
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 1239
    iget v1, v0, Landroid/graphics/Insets;->bottom:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController;->access$000(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1240
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/home/lib/dialog/AlertController;->access$1800(Lmiui/home/lib/dialog/AlertController;I)V

    .line 1242
    :cond_0
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v1, p1}, Lmiui/home/lib/dialog/AlertController;->access$2100(Lmiui/home/lib/dialog/AlertController;Landroid/view/WindowInsets;)V

    .line 1243
    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController$6;->isRealTablet:Z

    if-nez p1, :cond_1

    .line 1244
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    iget p1, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {p0, p1}, Lmiui/home/lib/dialog/AlertController;->access$1900(Lmiui/home/lib/dialog/AlertController;I)V

    :cond_1
    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    .line 1180
    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 1181
    invoke-static {}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->cancelAnimator()V

    .line 1182
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/home/lib/dialog/AlertController;->access$1302(Lmiui/home/lib/dialog/AlertController;Z)Z

    .line 1183
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$1400(Lmiui/home/lib/dialog/AlertController;)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController$6;->isRealTablet:Z

    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 1210
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    .line 1211
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 1212
    iget v1, p2, Landroid/graphics/Insets;->bottom:I

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v2}, Lmiui/home/lib/dialog/AlertController;->access$1500(Lmiui/home/lib/dialog/AlertController;)I

    move-result v2

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1213
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1214
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v2}, Lmiui/home/lib/dialog/AlertController;->access$1700(Lmiui/home/lib/dialog/AlertController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowInsetsAnimation onProgress mPanelAndImeMargin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v3}, Lmiui/home/lib/dialog/AlertController;->access$1500(Lmiui/home/lib/dialog/AlertController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlertController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowInsetsAnimation onProgress ime : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowInsetsAnimation onProgress navigationBar : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 1223
    :goto_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    neg-int p2, p2

    invoke-static {v0, p2}, Lmiui/home/lib/dialog/AlertController;->access$1800(Lmiui/home/lib/dialog/AlertController;I)V

    .line 1225
    :cond_2
    iget-boolean p2, p0, Lmiui/home/lib/dialog/AlertController$6;->isRealTablet:Z

    if-nez p2, :cond_3

    .line 1226
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {p0, v1}, Lmiui/home/lib/dialog/AlertController;->access$1900(Lmiui/home/lib/dialog/AlertController;I)V

    :cond_3
    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 3

    .line 1195
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$1600(Lmiui/home/lib/dialog/AlertController;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v2}, Lmiui/home/lib/dialog/AlertController;->access$000(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lmiui/home/lib/dialog/AlertController;->access$1502(Lmiui/home/lib/dialog/AlertController;I)I

    .line 1196
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$1700(Lmiui/home/lib/dialog/AlertController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowInsetsAnimation onStart mPanelAndImeMargin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController;->access$1500(Lmiui/home/lib/dialog/AlertController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$1500(Lmiui/home/lib/dialog/AlertController;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 1200
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$6;->this$0:Lmiui/home/lib/dialog/AlertController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/home/lib/dialog/AlertController;->access$1502(Lmiui/home/lib/dialog/AlertController;I)I

    .line 1202
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Callback;->onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p0

    return-object p0
.end method
