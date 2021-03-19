.class Lmiui/external/widget/Spinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic val$textAlignment:I

.field final synthetic val$textDirection:I


# direct methods
.method constructor <init>(Lmiui/external/widget/Spinner$DropdownPopup;II)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iput p2, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->val$textDirection:I

    iput p3, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->val$textAlignment:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1077
    iget-object v0, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object v1, v0, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {v0, v1}, Lmiui/external/widget/Spinner$DropdownPopup;->isVisibleToUser(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lmiui/external/widget/Spinner$DropdownPopup;->dismiss()V

    goto :goto_0

    .line 1080
    :cond_0
    iget-object v0, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget v1, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->val$textDirection:I

    iget v2, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->val$textAlignment:I

    iget-object v3, v0, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-static {v3}, Lmiui/external/widget/Spinner;->access$300(Lmiui/external/widget/Spinner;)F

    move-result v3

    iget-object v4, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object v4, v4, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-static {v4}, Lmiui/external/widget/Spinner;->access$400(Lmiui/external/widget/Spinner;)F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/external/widget/Spinner$DropdownPopup;->show(IIFF)V

    :goto_0
    return-void
.end method
