.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/TaskView;

.field private final synthetic f$1:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$2:Z

.field private final synthetic f$3:I

.field private final synthetic f$4:Z

.field private final synthetic f$5:I

.field private final synthetic f$6:Lcom/miui/home/recents/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/launcher/Launcher;ZIZILcom/miui/home/recents/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$0:Lcom/miui/home/recents/views/TaskView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$1:Lcom/miui/home/launcher/Launcher;

    iput-boolean p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$2:Z

    iput p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$3:I

    iput-boolean p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$4:Z

    iput p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$5:I

    iput-object p7, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$6:Lcom/miui/home/recents/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$0:Lcom/miui/home/recents/views/TaskView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$1:Lcom/miui/home/launcher/Launcher;

    iget-boolean v2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$2:Z

    iget v3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$3:I

    iget-boolean v4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$4:Z

    iget v5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$5:I

    iget-object v6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;->f$6:Lcom/miui/home/recents/views/RecentsView;

    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->lambda$onAnimationEnd$0(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/launcher/Launcher;ZIZILcom/miui/home/recents/views/RecentsView;)V

    return-void
.end method
