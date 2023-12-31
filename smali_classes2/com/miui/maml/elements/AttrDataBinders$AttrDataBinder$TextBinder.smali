.class Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;
.super Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;)V
    .locals 1

    .line 68
    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    .line 71
    check-cast p1, Lcom/miui/maml/elements/TextScreenElement;

    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v0, v0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lcom/miui/maml/data/ContextVariables;

    iget-object p0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object p0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/maml/data/ContextVariables;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    return-void
.end method
