.class Lcom/miui/home/settings/MiuiHomeSettings$8;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->showHomeSearchBarDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/MiuiHomeSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$8;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 532
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$8;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-virtual {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->access$300(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/Context;Z)V

    .line 533
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$8;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->access$400(Lcom/miui/home/settings/MiuiHomeSettings;)Lmiui/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/app/AlertDialog;->dismiss()V

    return-void
.end method
