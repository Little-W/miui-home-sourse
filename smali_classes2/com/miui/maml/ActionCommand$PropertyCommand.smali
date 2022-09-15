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

    .line 1277
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 1278
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    return-void
.end method

.method public static create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand$PropertyCommand;
    .locals 2

    .line 1282
    new-instance v0, Lcom/miui/maml/util/Variable;

    invoke-direct {v0, p1}, Lcom/miui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    const-string p1, "visibility"

    .line 1283
    invoke-virtual {v0}, Lcom/miui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1284
    new-instance p1, Lcom/miui/maml/ActionCommand$VisibilityProperty;

    invoke-direct {p1, p0, v0, p2}, Lcom/miui/maml/ActionCommand$VisibilityProperty;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "animation"

    .line 1285
    invoke-virtual {v0}, Lcom/miui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1286
    new-instance p1, Lcom/miui/maml/ActionCommand$AnimationProperty;

    invoke-direct {p1, p0, v0, p2}, Lcom/miui/maml/ActionCommand$AnimationProperty;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 1293
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 1294
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    if-nez v0, :cond_0

    return-void

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    if-nez v0, :cond_1

    .line 1297
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$PropertyCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    invoke-virtual {v1}, Lcom/miui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 1298
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    if-nez v0, :cond_1

    const-string v0, "ActionCommand"

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find PropertyCommand target, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    invoke-virtual {v2}, Lcom/miui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1300
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    return-void

    :cond_1
    return-void
.end method

.method public perform()V
    .locals 1

    .line 1308
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    if-nez v0, :cond_0

    return-void

    .line 1310
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$PropertyCommand;->doPerform()V

    return-void
.end method
