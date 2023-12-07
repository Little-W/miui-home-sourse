.class Lcom/miui/maml/ActionCommand$SoundCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SoundCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/SoundManager$Command;

.field private mKeepCur:Z

.field private mLoop:Z

.field private mSound:Ljava/lang/String;

.field private mStreamIdExp:Lcom/miui/maml/data/Expression;

.field private mStreamIdVar:Lcom/miui/maml/data/IndexedVariable;

.field private mVolumeExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1290
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    const-string p1, "sound"

    .line 1291
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    const-string p1, "keepCur"

    .line 1292
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    const-string p1, "loop"

    .line 1293
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mLoop:Z

    const-string p1, "command"

    .line 1294
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/maml/SoundManager$Command;->parse(Ljava/lang/String;)Lcom/miui/maml/SoundManager$Command;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mCommand:Lcom/miui/maml/SoundManager$Command;

    .line 1295
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$SoundCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "volume"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lcom/miui/maml/data/Expression;

    .line 1296
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lcom/miui/maml/data/Expression;

    if-nez p1, :cond_0

    const-string p1, "ActionCommand"

    const-string v0, "invalid expression in SoundCommand"

    .line 1297
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$SoundCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "streamId"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mStreamIdExp:Lcom/miui/maml/data/Expression;

    const-string p1, "streamIdVar"

    .line 1300
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1302
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$SoundCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mStreamIdVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_1
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 6

    .line 1308
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mCommand:Lcom/miui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lcom/miui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mStreamIdExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_3

    .line 1324
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    .line 1325
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$SoundCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mCommand:Lcom/miui/maml/SoundManager$Command;

    invoke-virtual {v1, v0, p0}, Lcom/miui/maml/ScreenElementRoot;->playSound(ILcom/miui/maml/SoundManager$Command;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1311
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_2

    .line 1312
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    .line 1314
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$SoundCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    new-instance v3, Lcom/miui/maml/SoundManager$SoundOptions;

    iget-boolean v4, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    iget-boolean v5, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mLoop:Z

    invoke-direct {v3, v4, v5, v0}, Lcom/miui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I

    move-result v0

    .line 1315
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mStreamIdVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_3

    int-to-double v0, v0

    .line 1316
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_3
    :goto_0
    return-void
.end method
