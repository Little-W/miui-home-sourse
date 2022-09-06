.class Lcom/miui/maml/ActionCommand$FieldCommand;
.super Lcom/miui/maml/ActionCommand$BaseMethodCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FieldCommand"


# instance fields
.field private mField:Ljava/lang/reflect/Field;

.field private mFieldName:Ljava/lang/String;

.field private mIsSet:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 3069
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string p1, "field"

    .line 3070
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    .line 3071
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FieldCommand, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", field="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    const-string p1, "method"

    .line 3072
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "get"

    .line 3073
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3074
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    goto :goto_0

    :cond_0
    const-string p2, "set"

    .line 3075
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3076
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .line 3114
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 3116
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FieldCommand;->loadField()V

    .line 3119
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 3121
    :try_start_0
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3124
    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    if-eqz v0, :cond_1

    .line 3125
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FieldCommand;->prepareParams()V

    .line 3126
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mParamValues:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mParamValues:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3127
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FieldCommand;->getTarget()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mParamValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 3130
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v0, :cond_2

    .line 3131
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FieldCommand;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3132
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActionCommand"

    .line 3145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Field target is null. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ActionCommand"

    .line 3143
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "ActionCommand"

    .line 3141
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .line 3082
    invoke-super {p0}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->init()V

    .line 3083
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3086
    :pswitch_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 3087
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FieldCommand;->loadField()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected loadField()V
    .locals 4

    .line 3095
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 3096
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FieldCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3098
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    .line 3101
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 3103
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActionCommand"

    .line 3105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ActionCommand"

    .line 3108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "class is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
