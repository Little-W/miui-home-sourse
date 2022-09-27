.class Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;
.super Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrcIdBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;)V
    .locals 1

    .line 103
    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v0, v0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lcom/miui/maml/data/ContextVariables;

    iget-object v1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v1, v1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/ContextVariables;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 107
    check-cast p1, Lcom/miui/maml/elements/ImageScreenElement;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/elements/ImageScreenElement;->setSrcId(D)V

    return-void
.end method
