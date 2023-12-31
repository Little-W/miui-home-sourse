.class public final synthetic Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$q0Ap0KjeCK2RJGH7T674Bomi6yc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$q0Ap0KjeCK2RJGH7T674Bomi6yc;->f$0:Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$q0Ap0KjeCK2RJGH7T674Bomi6yc;->f$0:Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil;->lambda$showDownloadMaMlWarningDialog$1(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V

    return-void
.end method
