.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$sX9NKqsF25iPDpyB_rHXoEbYcX4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$sX9NKqsF25iPDpyB_rHXoEbYcX4;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$sX9NKqsF25iPDpyB_rHXoEbYcX4;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->lambda$keepDataConsistent$0$HotSeatsScreenViewContent(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method
