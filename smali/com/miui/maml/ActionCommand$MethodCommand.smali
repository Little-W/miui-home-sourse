.class Lcom/miui/maml/ActionCommand$MethodCommand;
.super Lcom/miui/maml/ActionCommand$BaseMethodCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "MethodCommand"


# instance fields
.field private mCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/reflect/Method;

.field private mMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 2728
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string p1, "method"

    .line 2729
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    .line 2730
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MethodCommand, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", method="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n    "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 6

    .line 2783
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MethodCommand;->prepareParams()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2787
    :try_start_0
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v3}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2790
    :pswitch_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 2791
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MethodCommand;->loadMethod()V

    .line 2793
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 2794
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MethodCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 2795
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_0

    .line 2802
    :cond_2
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_3

    .line 2803
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v5

    .line 2812
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v2, :cond_4

    .line 2813
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2822
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v0, :cond_6

    .line 2823
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2817
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "ActionCommand"

    .line 2818
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    .line 2819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n cause: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, ""

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2818
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, -0x2

    .line 2822
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v1, :cond_6

    .line 2823
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_6
    :goto_2
    return-void

    .line 2822
    :goto_3
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v2, :cond_7

    .line 2823
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 2825
    :cond_7
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 4

    .line 2735
    invoke-super {p0}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->init()V

    .line 2737
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2740
    :pswitch_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    .line 2741
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MethodCommand;->loadMethod()V

    goto :goto_0

    .line 2745
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MethodCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2746
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    goto :goto_0

    .line 2747
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_3

    .line 2748
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 2750
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mParamTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActionCommand"

    .line 2752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "init, fail to find method. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "ActionCommand"

    .line 2755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "init, class is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected loadMethod()V
    .locals 4

    .line 2763
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 2764
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MethodCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2766
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    .line 2769
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2771
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mParamTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActionCommand"

    .line 2773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "loadMethod(). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "ActionCommand"

    .line 2775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "loadMethod(), successful.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "ActionCommand"

    .line 2777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "loadMethod(), class is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
