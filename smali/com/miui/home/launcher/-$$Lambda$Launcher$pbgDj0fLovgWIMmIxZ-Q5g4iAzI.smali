.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$pbgDj0fLovgWIMmIxZ-Q5g4iAzI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$pbgDj0fLovgWIMmIxZ-Q5g4iAzI;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-boolean p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$pbgDj0fLovgWIMmIxZ-Q5g4iAzI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$pbgDj0fLovgWIMmIxZ-Q5g4iAzI;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-boolean v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$pbgDj0fLovgWIMmIxZ-Q5g4iAzI;->f$1:Z

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/Launcher;->lambda$reloadClockIfNeed$22(Lcom/miui/home/launcher/Launcher;ZLjava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
