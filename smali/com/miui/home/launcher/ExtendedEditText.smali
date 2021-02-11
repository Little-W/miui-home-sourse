.class public Lcom/miui/home/launcher/ExtendedEditText;
.super Landroid/widget/EditText;
.source "ExtendedEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;
    }
.end annotation


# instance fields
.field private mBackKeyListener:Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/launcher/ExtendedEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ExtendedEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 63
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/miui/home/launcher/ExtendedEditText;->mBackKeyListener:Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 69
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 84
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ExtendedEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x82

    .line 87
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ExtendedEditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ExtendedEditText;->clearFocus()V

    .line 94
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ExtendedEditText;->hideKeyboard()V

    return-void
.end method

.method public setOnBackKeyListener(Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/miui/home/launcher/ExtendedEditText;->mBackKeyListener:Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;

    return-void
.end method
