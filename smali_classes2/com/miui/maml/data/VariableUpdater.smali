.class public Lcom/miui/maml/data/VariableUpdater;
.super Ljava/lang/Object;
.source "VariableUpdater.java"


# instance fields
.field private mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/maml/data/VariableUpdater;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    return-void
.end method

.method protected final getContext()Lcom/miui/maml/ScreenContext;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    return-object p0
.end method

.method protected final getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/maml/data/VariableUpdater;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdaterManager;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public tick(J)V
    .locals 0

    return-void
.end method
