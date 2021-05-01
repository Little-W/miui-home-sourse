.class public final synthetic Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$3$1$1$YhEBXO92iUXIQkOeeAf6vUta-QI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$3$1$1$YhEBXO92iUXIQkOeeAf6vUta-QI;->f$0:Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;

    iput p2, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$3$1$1$YhEBXO92iUXIQkOeeAf6vUta-QI;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$3$1$1$YhEBXO92iUXIQkOeeAf6vUta-QI;->f$0:Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;

    iget v1, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$3$1$1$YhEBXO92iUXIQkOeeAf6vUta-QI;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;->lambda$onAnimationEnd$380(Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;ILjava/lang/Integer;)V

    return-void
.end method
