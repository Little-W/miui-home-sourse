.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Hx3DB2hFhAgTLIg7e7g0qmzZ5SM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Hx3DB2hFhAgTLIg7e7g0qmzZ5SM;->f$0:Ljava/util/List;

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Hx3DB2hFhAgTLIg7e7g0qmzZ5SM;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Hx3DB2hFhAgTLIg7e7g0qmzZ5SM;->f$0:Ljava/util/List;

    iget v1, p0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Hx3DB2hFhAgTLIg7e7g0qmzZ5SM;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/DeviceConfig;->lambda$null$335(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method
