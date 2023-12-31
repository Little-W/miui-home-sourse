.class public abstract Lcom/miui/maml/ActionCommand$PropertyCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PropertyCommand"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mTargetElement:Lcom/miui/maml/elements/ScreenElement;

.field private mTargetObj:Lcom/miui/maml/util/Variable;


# direct methods
.method protected constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V
    .locals 0

    .line 1417
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 1418
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    return-void
.end method

.method public static create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand$PropertyCommand;
    .locals 2

    .line 1422
    new-instance v0, Lcom/miui/maml/util/Variable;

    invoke-direct {v0, p1}, Lcom/miui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {v0}, Lcom/miui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "visibility"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1424
    new-instance p1, Lcom/miui/maml/ActionCommand$VisibilityProperty;

    invoke-direct {p1, p0, v0, p2}, Lcom/miui/maml/ActionCommand$VisibilityProperty;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    return-object p1

    .line 1425
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "animation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1426
    new-instance p1, Lcom/miui/maml/ActionCommand$AnimationProperty;

    invoke-direct {p1, p0, v0, p2}, Lcom/miui/maml/ActionCommand$AnimationProperty;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 1433
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 1434
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    if-nez v0, :cond_0

    return-void

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    if-nez v0, :cond_1

    .line 1437
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$PropertyCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    invoke-virtual {v1}, Lcom/miui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 1438
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    if-nez v0, :cond_1

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not find PropertyCommand target, name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    invoke-virtual {v1}, Lcom/miui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionCommand"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1440
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    :cond_1
    return-void
.end method

.method public perform()V
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    if-nez v0, :cond_0

    return-void

    .line 1450
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$PropertyCommand;->doPerform()V

    return-void
.end method
