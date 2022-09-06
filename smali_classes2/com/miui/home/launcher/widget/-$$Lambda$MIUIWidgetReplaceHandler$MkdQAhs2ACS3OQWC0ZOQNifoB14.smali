.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Workspace;

.field private final synthetic f$1:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

.field private final synthetic f$2:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

.field private final synthetic f$3:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;->f$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;->f$1:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;->f$2:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iput-object p4, p0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;->f$3:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;->f$0:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;->f$1:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;->f$2:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetReplaceHandler$MkdQAhs2ACS3OQWC0ZOQNifoB14;->f$3:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->lambda$replaceWidget$0(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
