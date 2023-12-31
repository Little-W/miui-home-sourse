.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$3CfSFQ6cftzV24w1Apw86pvU7pA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ApplicationsMessage$1;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ApplicationsMessage$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$3CfSFQ6cftzV24w1Apw86pvU7pA;->f$0:Lcom/miui/home/launcher/ApplicationsMessage$1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$3CfSFQ6cftzV24w1Apw86pvU7pA;->f$0:Lcom/miui/home/launcher/ApplicationsMessage$1;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ApplicationsMessage$1;->lambda$onChange$0$ApplicationsMessage$1(Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
