.class Lmiuix/androidbasewidget/widget/ClearableEditText$1;
.super Ljava/lang/Object;
.source "ClearableEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/androidbasewidget/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;


# direct methods
.method constructor <init>(Lmiuix/androidbasewidget/widget/ClearableEditText;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$1;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$1;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq v0, p1, :cond_1

    .line 70
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$1;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-static {p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$002(Lmiuix/androidbasewidget/widget/ClearableEditText;Z)Z

    .line 71
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$1;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-virtual {p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->refreshDrawableState()V

    .line 72
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$1;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-static {p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$100(Lmiuix/androidbasewidget/widget/ClearableEditText;)Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$1;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-static {p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$100(Lmiuix/androidbasewidget/widget/ClearableEditText;)Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->invalidateRoot()V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
