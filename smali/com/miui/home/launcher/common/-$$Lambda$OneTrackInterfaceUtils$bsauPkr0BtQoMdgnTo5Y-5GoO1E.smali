.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$bsauPkr0BtQoMdgnTo5Y-5GoO1E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$bsauPkr0BtQoMdgnTo5Y-5GoO1E;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$bsauPkr0BtQoMdgnTo5Y-5GoO1E;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$bsauPkr0BtQoMdgnTo5Y-5GoO1E;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$bsauPkr0BtQoMdgnTo5Y-5GoO1E;->f$1:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->lambda$trackMiuiWidgetEvent$1(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
