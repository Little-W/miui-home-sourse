.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$D-Jj8ak4gat9e8mhWMjg1xHTz70;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ApplicationsMessage$1;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ApplicationsMessage$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$D-Jj8ak4gat9e8mhWMjg1xHTz70;->f$0:Lcom/miui/home/launcher/ApplicationsMessage$1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$D-Jj8ak4gat9e8mhWMjg1xHTz70;->f$0:Lcom/miui/home/launcher/ApplicationsMessage$1;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/ApplicationsMessage$1;->lambda$onChange$0(Lcom/miui/home/launcher/ApplicationsMessage$1;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
