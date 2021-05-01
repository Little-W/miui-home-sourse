.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompat$ZVG0z0nVgGT8bNrpvHXSxbxu3L4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompat$ZVG0z0nVgGT8bNrpvHXSxbxu3L4;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompat$ZVG0z0nVgGT8bNrpvHXSxbxu3L4;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->lambda$performBackground$465(Ljava/lang/Runnable;)V

    return-void
.end method
