.class Lcom/miui/maml/elements/AnimConfigElement$ConfigData;
.super Ljava/lang/Object;
.source "AnimConfigElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AnimConfigElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigData"
.end annotation


# instance fields
.field public mDelay:Lcom/miui/maml/data/IndexedVariable;

.field public mEase:Lcom/miui/maml/data/IndexedVariable;

.field public mEaseLen:Lcom/miui/maml/data/IndexedVariable;

.field public mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

.field public mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

.field public mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

.field public mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

.field public mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

.field public mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

.field public mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

.field public mProperty:Lcom/miui/maml/data/IndexedVariable;

.field public mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

.field final synthetic this$0:Lcom/miui/maml/elements/AnimConfigElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/AnimConfigElement;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->this$0:Lcom/miui/maml/elements/AnimConfigElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/AnimConfigElement;Lcom/miui/maml/elements/AnimConfigElement$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/AnimConfigElement;)V

    return-void
.end method
