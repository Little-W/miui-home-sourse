.class public final synthetic Landroidx/appcompat/widget/-$$Lambda$tJOcH8l7yIboOEu0TODlxWoYu9s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/-$$Lambda$tJOcH8l7yIboOEu0TODlxWoYu9s;->f$0:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/-$$Lambda$tJOcH8l7yIboOEu0TODlxWoYu9s;->f$0:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->invalidateMenu()V

    return-void
.end method
