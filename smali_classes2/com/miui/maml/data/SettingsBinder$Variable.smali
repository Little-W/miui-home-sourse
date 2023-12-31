.class Lcom/miui/maml/data/SettingsBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$Variable;
.source "SettingsBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/SettingsBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Variable"
.end annotation


# instance fields
.field public mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

.field public mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/maml/data/SettingsBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/SettingsBinder;Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 35
    invoke-direct {p0, p2, p3}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    const-string p1, "category"

    .line 36
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "secure"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/maml/data/SettingsBinder$Category;->Secure:Lcom/miui/maml/data/SettingsBinder$Category;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/maml/data/SettingsBinder$Category;->System:Lcom/miui/maml/data/SettingsBinder$Category;

    :goto_0
    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

    const-string p1, "key"

    .line 37
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public query()V
    .locals 7

    .line 45
    sget-object v0, Lcom/miui/maml/data/SettingsBinder$1;->$SwitchMap$com$miui$maml$data$SettingsBinder$Category:[I

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

    invoke-virtual {v1}, Lcom/miui/maml/data/SettingsBinder$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v1, :cond_6

    if-eq v0, v6, :cond_0

    goto/16 :goto_0

    .line 65
    :cond_0
    iget v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mType:I

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/SettingsBinder$Variable;->set(D)V

    goto/16 :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/SettingsBinder$Variable;->set(D)V

    goto/16 :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/SettingsBinder$Variable;->set(D)V

    goto/16 :goto_0

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 68
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mDefStringValue:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/SettingsBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_6
    iget v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mType:I

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_7

    goto :goto_0

    .line 54
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/SettingsBinder$Variable;->set(D)V

    goto :goto_0

    .line 60
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/SettingsBinder$Variable;->set(D)V

    goto :goto_0

    .line 57
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mDefNumberValue:D

    double-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/SettingsBinder$Variable;->set(D)V

    goto :goto_0

    .line 49
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 50
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mDefStringValue:Ljava/lang/String;

    :cond_b
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/SettingsBinder$Variable;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
