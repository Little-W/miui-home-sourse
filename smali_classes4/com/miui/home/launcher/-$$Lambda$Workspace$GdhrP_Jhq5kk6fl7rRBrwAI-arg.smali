.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$GdhrP_Jhq5kk6fl7rRBrwAI-arg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$GdhrP_Jhq5kk6fl7rRBrwAI-arg;->f$0:Lcom/miui/home/launcher/CellLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$GdhrP_Jhq5kk6fl7rRBrwAI-arg;->f$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {p0}, Lcom/miui/home/launcher/Workspace;->lambda$onDragCompleted$5(Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method
