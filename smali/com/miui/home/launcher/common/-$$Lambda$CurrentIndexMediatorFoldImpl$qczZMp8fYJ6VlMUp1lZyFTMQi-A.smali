.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$qczZMp8fYJ6VlMUp1lZyFTMQi-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$qczZMp8fYJ6VlMUp1lZyFTMQi-A;->f$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$qczZMp8fYJ6VlMUp1lZyFTMQi-A;->f$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->lambda$getCurrentRangeScreenID$0(Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
