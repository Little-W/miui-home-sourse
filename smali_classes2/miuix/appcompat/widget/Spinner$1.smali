.class Lmiuix/appcompat/widget/Spinner$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/Spinner;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 706
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner;->access$100(Lmiuix/appcompat/widget/Spinner;)Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->showPopup()V

    .line 709
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
