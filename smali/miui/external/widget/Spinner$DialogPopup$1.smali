.class Lmiui/external/widget/Spinner$DialogPopup$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/external/widget/Spinner$DialogPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/external/widget/Spinner$DialogPopup;


# direct methods
.method constructor <init>(Lmiui/external/widget/Spinner$DialogPopup;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup$1;->this$1:Lmiui/external/widget/Spinner$DialogPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 912
    iget-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup$1;->this$1:Lmiui/external/widget/Spinner$DialogPopup;

    iget-object p1, p1, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-static {p1}, Lmiui/external/widget/Spinner;->access$200(Lmiui/external/widget/Spinner;)V

    return-void
.end method
