.class Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$ZanyInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZanyInputConnection"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;


# direct methods
.method public constructor <init>(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$ZanyInputConnection;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    new-instance p1, Landroid/view/KeyEvent;

    const/16 p2, 0x43

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$ZanyInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v0, p2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$ZanyInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p0

    return p0
.end method
