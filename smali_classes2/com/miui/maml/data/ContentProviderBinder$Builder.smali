.class public Lcom/miui/maml/data/ContentProviderBinder$Builder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBinder:Lcom/miui/maml/data/ContentProviderBinder;


# direct methods
.method protected constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    return-void
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/miui/maml/data/Variables;)V
    .locals 1

    .line 156
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;

    invoke-direct {v0, p1, p2, p5}, Lcom/miui/maml/data/ContentProviderBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    .line 157
    iput-object p3, v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 158
    iput p4, v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mRow:I

    .line 159
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    invoke-virtual {p1, v0}, Lcom/miui/maml/data/ContentProviderBinder;->addVariable(Lcom/miui/maml/data/VariableBinder$Variable;)V

    return-void
.end method

.method public setArgs([Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public setColumns([Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    return-object p0
.end method

.method public setCountName(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 150
    invoke-virtual {v0}, Lcom/miui/maml/data/ContentProviderBinder;->createCountVar()V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    new-instance v1, Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lcom/miui/maml/data/ContentProviderBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mWhereFormatter:Lcom/miui/maml/util/TextFormatter;

    return-object p0
.end method

.method public setWhere(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    new-instance v1, Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lcom/miui/maml/data/ContentProviderBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mWhereFormatter:Lcom/miui/maml/util/TextFormatter;

    return-object p0
.end method
