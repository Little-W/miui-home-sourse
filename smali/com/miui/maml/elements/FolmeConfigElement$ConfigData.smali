.class Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;
.super Ljava/lang/Object;
.source "FolmeConfigElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/FolmeConfigElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigData"
.end annotation


# instance fields
.field public mDelayExp:Lcom/miui/maml/data/Expression;

.field public mEaseExp:[Lcom/miui/maml/data/Expression;

.field public mFromSpeedExp:Lcom/miui/maml/data/Expression;

.field public mOnBeginCallbackExp:[Lcom/miui/maml/data/Expression;

.field public mOnCompleteCallbackExp:[Lcom/miui/maml/data/Expression;

.field public mOnUpdateCallbackExp:[Lcom/miui/maml/data/Expression;

.field public mPropertyExp:[Lcom/miui/maml/data/Expression;

.field final synthetic this$0:Lcom/miui/maml/elements/FolmeConfigElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/FolmeConfigElement;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->this$0:Lcom/miui/maml/elements/FolmeConfigElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/FolmeConfigElement;Lcom/miui/maml/elements/FolmeConfigElement$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/FolmeConfigElement;)V

    return-void
.end method
