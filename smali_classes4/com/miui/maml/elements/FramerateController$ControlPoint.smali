.class public Lcom/miui/maml/elements/FramerateController$ControlPoint;
.super Ljava/lang/Object;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/FramerateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlPoint"
.end annotation


# instance fields
.field public mFramerate:I

.field public mTime:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "time"

    .line 34
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mTime:J

    const-string v0, "frameRate"

    const/4 v1, -0x1

    .line 35
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    return-void
.end method
