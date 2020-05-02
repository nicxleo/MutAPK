.class Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afollestad/materialdialogs/f$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity;->askForDatabaseIfNeeded()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity;


# direct methods
.method constructor <init>(Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity;)V
    .locals 0

    iput-object p1, p0, Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity$2;->this$0:Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/f;Lcom/afollestad/materialdialogs/b;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity$2;->this$0:Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity;

    const-class v0, Les/usc/citius/servando/calendula/HomePagerActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "show_db_dialog"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity$2;->this$0:Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity;

    invoke-virtual {p2}, Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity;->finish()V

    iget-object p2, p0, Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity$2;->this$0:Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity;

    invoke-virtual {p2, p1}, Les/usc/citius/servando/calendula/activities/AllergiesSearchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
