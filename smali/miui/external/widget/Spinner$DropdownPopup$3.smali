.class Lmiui/external/widget/Spinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/external/widget/Spinner$DropdownPopup;->show(IIFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/external/widget/Spinner$DropdownPopup;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lmiui/external/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$3;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Lmiui/external/widget/Spinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1088
    iget-object v0, p0, Lmiui/external/widget/Spinner$DropdownPopup$3;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {v0}, Lmiui/external/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v1, p0, Lmiui/external/widget/Spinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1092
    :cond_0
    iget-object v0, p0, Lmiui/external/widget/Spinner$DropdownPopup$3;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-static {v0}, Lmiui/external/widget/Spinner;->access$200(Lmiui/external/widget/Spinner;)V

    return-void
.end method
