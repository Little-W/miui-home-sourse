.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$dNZP5-O6XsFEgRTgofzVsWNMg_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$dNZP5-O6XsFEgRTgofzVsWNMg_E;->f$0:Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$dNZP5-O6XsFEgRTgofzVsWNMg_E;->f$0:Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;

    invoke-static {v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->lambda$performClearAllRecentTasks$4(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    return-void
.end method
