.class Lcom/miui/maml/ActionCommand$VisibilityProperty;
.super Lcom/miui/maml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityProperty"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "visibility"


# instance fields
.field private mIsShow:Z

.field private mIsToggle:Z


# direct methods
.method protected constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V
    .locals 0

    .line 1464
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/ActionCommand$PropertyCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    const-string p1, "toggle"

    .line 1465
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 1466
    iput-boolean p2, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsToggle:Z

    goto :goto_0

    :cond_0
    const-string p1, "true"

    .line 1467
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1468
    iput-boolean p2, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsShow:Z

    goto :goto_0

    :cond_1
    const-string p1, "false"

    .line 1469
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1470
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsShow:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 1

    .line 1475
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsToggle:Z

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    goto :goto_0

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    iget-boolean p0, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsShow:Z

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    :goto_0
    return-void
.end method
