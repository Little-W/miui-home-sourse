.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$nayfoNGdQQhMuqHYcd-EPnEmjB8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

.field private final synthetic f$1:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$nayfoNGdQQhMuqHYcd-EPnEmjB8;->f$0:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$nayfoNGdQQhMuqHYcd-EPnEmjB8;->f$1:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$nayfoNGdQQhMuqHYcd-EPnEmjB8;->f$0:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$nayfoNGdQQhMuqHYcd-EPnEmjB8;->f$1:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->lambda$createItemInfo$1(Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
