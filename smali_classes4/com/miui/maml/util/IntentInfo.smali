.class public Lcom/miui/maml/util/IntentInfo;
.super Ljava/lang/Object;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/IntentInfo$Extra;,
        Lcom/miui/maml/util/IntentInfo$Type;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaskVariable"


# instance fields
.field private mClassNameExp:Lcom/miui/maml/data/Expression;

.field private mExtraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/util/IntentInfo$Extra;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageNameExp:Lcom/miui/maml/data/Expression;

.field private mTask:Lcom/miui/maml/util/Task;

.field private mUri:Ljava/lang/String;

.field private mUriExp:Lcom/miui/maml/data/Expression;

.field private mVariables:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/miui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lcom/miui/maml/util/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 124
    iput-object p2, p0, Lcom/miui/maml/util/IntentInfo;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v0, "packageExp"

    .line 125
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mPackageNameExp:Lcom/miui/maml/data/Expression;

    const-string v0, "classExp"

    .line 126
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mClassNameExp:Lcom/miui/maml/data/Expression;

    const-string v0, "uri"

    .line 127
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    const-string v0, "uriExp"

    .line 128
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/util/IntentInfo;->mUriExp:Lcom/miui/maml/data/Expression;

    .line 129
    invoke-direct {p0, p1}, Lcom/miui/maml/util/IntentInfo;->loadExtras(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/util/IntentInfo;)Lcom/miui/maml/data/Variables;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mVariables:Lcom/miui/maml/data/Variables;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/util/IntentInfo;)Ljava/util/ArrayList;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private loadExtras(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 111
    new-instance v0, Lcom/miui/maml/util/IntentInfo$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/IntentInfo$1;-><init>(Lcom/miui/maml/util/IntentInfo;)V

    const-string p0, "Extra"

    invoke-static {p1, p0, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public set(Lcom/miui/maml/util/Task;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    return-void
.end method

.method public update(Landroid/content/Intent;)V
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 146
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/miui/maml/util/Task;->type:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 150
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/miui/maml/util/Task;->category:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 154
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 155
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v0, v1

    .line 158
    :goto_3
    iget-object v2, p0, Lcom/miui/maml/util/IntentInfo;->mPackageNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_7

    .line 159
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_7
    iget-object v2, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    if-eqz v2, :cond_8

    iget-object v1, v2, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    .line 163
    :cond_8
    iget-object v2, p0, Lcom/miui/maml/util/IntentInfo;->mClassNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_9

    .line 164
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 171
    :cond_a
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    :cond_b
    :goto_4
    invoke-static {v0, v1, p1}, Lcom/miui/maml/util/CustomUtils;->replaceCameraIntentInfoOnF3M(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 177
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/miui/maml/util/IntentInfo;->mUriExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_c

    .line 179
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 182
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    :cond_d
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    if-eqz p0, :cond_10

    .line 186
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/IntentInfo$Extra;

    .line 187
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->isConditionTrue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 188
    sget-object v1, Lcom/miui/maml/util/IntentInfo$2;->$SwitchMap$com$miui$maml$util$IntentInfo$Type:[I

    iget-object v2, v0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    invoke-virtual {v2}, Lcom/miui/maml/util/IntentInfo$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_5

    .line 205
    :pswitch_0
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    .line 202
    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_5

    .line 199
    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_5

    .line 196
    :pswitch_3
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_5

    .line 193
    :pswitch_4
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 190
    :pswitch_5
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 211
    :cond_f
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
