.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$jco-j2tLij83w6VQFnP68tu52kU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

.field private final synthetic f$1:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/SearchBarTransferLayout;Lcom/miui/home/launcher/SearchBarTransferLayout$Data;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$jco-j2tLij83w6VQFnP68tu52kU;->f$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$jco-j2tLij83w6VQFnP68tu52kU;->f$1:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$jco-j2tLij83w6VQFnP68tu52kU;->f$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$jco-j2tLij83w6VQFnP68tu52kU;->f$1:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->lambda$showTransferIfNeed$2$SearchBarTransferLayout(Lcom/miui/home/launcher/SearchBarTransferLayout$Data;)V

    return-void
.end method
